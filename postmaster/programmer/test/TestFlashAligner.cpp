#include "hal/interfaces/test_doubles/FlashMock.hpp"
#include "infra/util/test_helper/MemoryRangeMatcher.hpp"
#include "infra/util/test_helper/MockCallback.hpp"
#include "postmaster/programmer/FlashAligner.hpp"
#include "gtest/gtest.h"

class FlashAlignerTest
    : public testing::Test
{
public:
    testing::StrictMock<hal::CleanFlashMock> flash;
    services::FlashAligner::WithAlignment<4> aligner{ flash };

    std::array<uint8_t, 1> size1{ 99 };
    std::array<uint8_t, 4> size4{ 1, 2, 3, 4 };
    std::array<uint8_t, 6> size6{ 5, 6, 7, 8, 9, 10 };
    std::array<uint8_t, 8> size8{ 11, 12, 13, 14, 15, 16, 17, 18 };
};

TEST_F(FlashAlignerTest, write_one_block)
{
    EXPECT_CALL(flash, WriteBuffer(infra::MakeConstRange(size4), 0, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.WriteBuffer(size4, 0, infra::MockFunction<void()>());

    aligner.Flush(infra::MockFunction<void()>());
}

TEST_F(FlashAlignerTest, write_small_block)
{
    aligner.WriteBuffer(size1, 0, infra::MockFunction<void()>());

    EXPECT_CALL(flash, WriteBuffer(infra::ContentsEqual(std::vector<uint8_t>{ 99, 0, 0, 0 }), 0, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.Flush(infra::MockFunction<void()>());
}

TEST_F(FlashAlignerTest, write_large_block)
{
    EXPECT_CALL(flash, WriteBuffer(infra::Head(infra::MakeConstRange(size6), 4), 0, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.WriteBuffer(size6, 0, infra::MockFunction<void()>());

    EXPECT_CALL(flash, WriteBuffer(infra::ContentsEqual(std::vector<uint8_t>{ 9, 10, 0, 0}), 4, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.Flush(infra::MockFunction<void()>());
}

TEST_F(FlashAlignerTest, write_double_block)
{
    EXPECT_CALL(flash, WriteBuffer(infra::MakeConstRange(size8), 0, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.WriteBuffer(size8, 0, infra::MockFunction<void()>());

    aligner.Flush(infra::MockFunction<void()>());
}

TEST_F(FlashAlignerTest, write_one_block_at_offset)
{
    aligner.WriteBuffer(size1, 0, infra::MockFunction<void()>());

    EXPECT_CALL(flash, WriteBuffer(infra::ContentsEqual(std::vector<uint8_t>{ 99, 1, 2, 3 }), 0, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.WriteBuffer(size4, 1, infra::MockFunction<void()>());
}

TEST_F(FlashAlignerTest, write_small_block_at_offset)
{
    aligner.WriteBuffer(size1, 0, infra::MockFunction<void()>());
    aligner.WriteBuffer(size1, 1, infra::MockFunction<void()>());

    EXPECT_CALL(flash, WriteBuffer(infra::ContentsEqual(std::vector<uint8_t>{ 99, 99, 0, 0 }), 0, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.Flush(infra::MockFunction<void()>());
}

TEST_F(FlashAlignerTest, write_large_block_at_offset)
{
    aligner.WriteBuffer(size1, 0, infra::MockFunction<void()>());

    EXPECT_CALL(flash, WriteBuffer(infra::ContentsEqual(std::vector<uint8_t>{ 99, 5, 6, 7 }), 0, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.WriteBuffer(size6, 1, infra::MockFunction<void()>());

    EXPECT_CALL(flash, WriteBuffer(infra::ContentsEqual(std::vector<uint8_t>{ 8, 9, 10, 0 }), 4, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.Flush(infra::MockFunction<void()>());
}

TEST_F(FlashAlignerTest, write_double_block_at_offset)
{
    aligner.WriteBuffer(size1, 0, infra::MockFunction<void()>());

    EXPECT_CALL(flash, WriteBuffer(infra::ContentsEqual(std::vector<uint8_t>{ 99, 11, 12, 13 }), 0, testing::_)).WillOnce(testing::InvokeArgument<2>());
    EXPECT_CALL(flash, WriteBuffer(infra::ContentsEqual(std::vector<uint8_t>{ 14, 15, 16, 17 }), 4, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.WriteBuffer(size8, 1, infra::MockFunction<void()>());

    EXPECT_CALL(flash, WriteBuffer(infra::ContentsEqual(std::vector<uint8_t>{ 18, 0, 0, 0 }), 8, testing::_)).WillOnce(testing::InvokeArgument<2>());
    aligner.Flush(infra::MockFunction<void()>());
}
