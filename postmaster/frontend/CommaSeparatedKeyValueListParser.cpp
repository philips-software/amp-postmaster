#include "postmaster/frontend/CommaSeparatedKeyValueListParser.hpp"

namespace application
{
    CommaSeparatedKeyValueListParser::CommaSeparatedKeyValueListParser(infra::BoundedConstString list, const infra::Function<void(infra::BoundedConstString key, infra::BoundedConstString value)>& foundKeyValue)
        : list(list)
        , foundKeyValue(foundKeyValue)
    {
        Run();
    }

    bool CommaSeparatedKeyValueListParser::Valid() const
    {
        return valid;
    }

    void CommaSeparatedKeyValueListParser::Run()
    {
        while (valid)
        {
            ConsumeSpace();
            key = ReadToken();
            ConsumeSpace();
            ConsumeAssign();
            ConsumeSpace();
            value = ReadValue();
            ConsumeSpace();

            foundKeyValue(key, value);

            if (list.empty())
                break;

            ConsumeComma();
            ConsumeSpace();
        }
    }

    void CommaSeparatedKeyValueListParser::ConsumeSpace()
    {
        while (!list.empty() && infra::BoundedConstString(" \r\n\t").find(list.front()) != infra::BoundedConstString::npos)
            list = list.substr(1);
    }

    void CommaSeparatedKeyValueListParser::ConsumeAssign()
    {
        if (list.empty() || list.front() != '=')
            valid = false;
        else
            list = list.substr(1);
    }

    void CommaSeparatedKeyValueListParser::ConsumeComma()
    {
        if (list.empty() || list.front() != ',')
            valid = false;
        else
            list = list.substr(1);
    }

    void CommaSeparatedKeyValueListParser::ConsumeQuote()
    {
        if (list.empty() || list.front() != '"')
            valid = false;
        else
            list = list.substr(1);
    }

    infra::BoundedConstString CommaSeparatedKeyValueListParser::ReadToken()
    {
        auto result = list.substr(0, std::distance(list.begin(), std::find_if(list.begin(), list.end(), [](char c)
                                                                     {
                                                                         return c < 32 || c >= 127 || infra::BoundedConstString("()<>@,;:\\\"/[]?={} \t").find(c) != infra::BoundedConstString::npos;
                                                                     })));
        list = list.substr(result.size());
        valid = valid && !result.empty();
        return result;
    }

    infra::BoundedConstString CommaSeparatedKeyValueListParser::ReadValue()
    {
        if (!list.empty() && list.front() == '"')
        {
            bool quoted = false;
            ConsumeQuote();
            auto result = list.substr(0, std::distance(list.begin(), std::find_if(list.begin(), list.end(), [&quoted](char c)
                                                                         {
                                                                             if (quoted)
                                                                             {
                                                                                 quoted = false;
                                                                                 return false;
                                                                             }

                                                                             quoted = c == '\\';
                                                                             return c == '"';
                                                                         })));
            valid = valid && !result.empty();
            list = list.substr(result.size());
            ConsumeQuote();
            return result;
        }
        else
            return ReadToken();
    }
}
