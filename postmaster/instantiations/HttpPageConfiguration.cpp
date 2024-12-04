#include "postmaster/instantiations/HttpPageConfiguration.hpp"
#include "generated/Version.h"
#include "infra/syntax/JsonFormatter.hpp"
#include "services/network/HttpErrors.hpp"

namespace application
{
    HttpPageConfiguration::HttpPageConfiguration(infra::BoundedConstString path, services::ConfigurationStoreAccess<infra::BoundedString>& hostname,
        services::ConfigurationStoreAccess<infra::BoundedString>& attributes, services::ConfigurationStoreAccess<infra::BoundedString>& password)
        : path(path)
        , hostname(hostname)
        , attributes(attributes)
        , password(password)
    {}

    bool HttpPageConfiguration::ServesRequest(const infra::Tokenizer& pathTokens) const
    {
        return pathTokens.TokenAndRest(0) == path;
    }

    void HttpPageConfiguration::RespondToRequest(services::HttpRequestParser& parser, services::HttpServerConnection& connection)
    {
        if (parser.Verb() == services::HttpVerb::get)
            connection.SendResponse(*this);
        else if (parser.Verb() == services::HttpVerb::post)
        {
            infra::JsonObject object(parser.BodyBuffer());
            if (object.HasKey("hostname"))
            {
                object.GetString("hostname").ToString(*hostname);
                hostname.Write();
            }

            if (object.HasKey("attributes"))
            {
                object.GetString("attributes").ToString(*attributes);
                attributes.Write();
            }

            if (object.HasKey("password"))
            {
                object.GetString("password").ToString(*password);
                password.Write();
            }

            connection.SendResponse(*this);
        }
        else
            connection.SendResponse(services::HttpResponseBadRequest::Instance());
    }

    infra::BoundedConstString HttpPageConfiguration::Status() const
    {
        return services::http_responses::ok;
    }

    void HttpPageConfiguration::WriteBody(infra::TextOutputStream& stream) const
    {
        infra::JsonObjectFormatter configuration(stream);

        configuration.Add("hostname", *hostname);
        configuration.Add("attributes", *attributes);
        configuration.Add("version", Postmaster::generated::VERSION);
        configuration.Add("version_full", Postmaster::generated::VERSION_FULL);
    }
}
