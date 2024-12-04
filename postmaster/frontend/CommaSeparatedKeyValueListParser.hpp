#ifndef POSTMASTER_COMMA_SEPARATED_KEY_VALUE_LIST_PARSER_HPP
#define POSTMASTER_COMMA_SEPARATED_KEY_VALUE_LIST_PARSER_HPP

#include "infra/util/BoundedString.hpp"
#include "infra/util/Function.hpp"

namespace application
{
    class CommaSeparatedKeyValueListParser
    {
    public:
        CommaSeparatedKeyValueListParser(infra::BoundedConstString list, const infra::Function<void(infra::BoundedConstString key, infra::BoundedConstString value)>& foundKeyValue);

        bool Valid() const;

    private:
        void Run();
        void ConsumeSpace();
        void ConsumeAssign();
        void ConsumeComma();
        void ConsumeQuote();
        infra::BoundedConstString ReadToken();
        infra::BoundedConstString ReadValue();

    private:
        infra::BoundedConstString list;
        infra::Function<void(infra::BoundedConstString key, infra::BoundedConstString value)> foundKeyValue;
        bool valid = true;

        infra::BoundedConstString key;
        infra::BoundedConstString value;
    };
}

#endif
