#include "postmaster/programmer/HttpPageFirmware.hpp"
#include "services/network/HttpErrors.hpp"

namespace application
{
    HttpPageFirmware::HttpPageFirmware(infra::BoundedConstString path)
        : path(path)
    {}

    void HttpPageFirmware::SetReceptor(FirmwareReceptor& newReceptor)
    {
        receptor = &newReceptor;
    }

    void HttpPageFirmware::ResetReceptor(infra::BoundedConstString reason)
    {
        // ResetReceptor may only be called when the network has gone down and the connections have already been destructed.
        // When all connections have been cleaned up, then this object is not active anymore
        really_assert(!active);

        infra::ReConstruct(response, reason);
        receptor = nullptr;
    }

    bool HttpPageFirmware::ServesRequest(const infra::Tokenizer& pathTokens) const
    {
        return pathTokens.TokenAndRest(0) == path;
    }

    void HttpPageFirmware::RequestReceived(services::HttpRequestParser& parser, services::HttpServerConnection& connection)
    {
        if (parser.Verb() != services::HttpVerb::post)
            connection.SendResponse(services::HttpResponseBadRequest::Instance());
        else
        {
            if (receptor != nullptr)
            {
                this->connection = &connection;
                receptor->ReceptionStarted();
                active = true;
            }
            else
                connection.SendResponse(response);
        }
    }

    void HttpPageFirmware::DataReceived(infra::SharedPtr<infra::StreamReaderWithRewinding>&& reader)
    {
        if (receptor != nullptr)
        {
            this->reader = std::move(reader);
            receptor->DataReceived(access.MakeShared(*this->reader));
        }
    }

    void HttpPageFirmware::Close()
    {
        active = false;

        if (receptor != nullptr && !access.Referenced())
        {
            receptor->ReceptionStopped();
            connection->SendResponse(services::httpResponseNoContent);
        }

        connection = nullptr;
    }

    void HttpPageFirmware::ReaderUnreferenced()
    {
        if (!active)
        {
            receptor->ReceptionStopped();

            if (connection != nullptr)
                connection->SendResponse(services::httpResponseNoContent);
        }

        reader = nullptr;
    }

    HttpPageFirmware::HttpResponseNoReceptor::HttpResponseNoReceptor(infra::BoundedConstString reason)
        : services::SimpleHttpResponse("500 Internal Server Error", reason)
    {}
}
