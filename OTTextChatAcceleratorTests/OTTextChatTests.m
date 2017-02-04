//#import <XCTest/XCTest.h>
//
//
//
//describe(@"initWithMessage", ^(){
//    
//    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
//    
//    NSMutableString *randomString = [NSMutableString stringWithCapacity: 100*1024*1024];
//    
//    for (int i=0; i<100; i++) {
//        [randomString appendFormat: @"%c", [letters characterAtIndex: arc4random_uniform([letters length])]];
//    }
//    
//    it(@"Message is null", ^{
//        OTTextMessage *tc = [[OTTextMessage alloc] initWithMessage:nil alias:@"Bob" senderId:@"1234"];
//        [[tc shouldNot] beNil];
//        [[[tc dateTime] shouldNot] beNil];
//        [[[tc text] should] beNil];
//        [[[tc alias] should] equal:@"Bob"];
//        [[[tc senderId] should] equal:@"1234"];
//    });
//    it(@"Message is empty", ^{
//        OTTextMessage *tc = [[OTTextMessage alloc] initWithMessage:@"" alias:@"Bob" senderId:@"1234"];
//        [[tc shouldNot] beNil];
//        [[[tc dateTime] shouldNot] beNil];
//        [[[tc text] should] equal:@""];
//        [[[tc alias] should] equal:@"Bob"];
//        [[[tc senderId] should] equal:@"1234"];
//    });
//    it(@"Message is long string", ^{
//        OTTextMessage *tc = [[OTTextMessage alloc] initWithMessage:randomString alias:@"Bob" senderId:@"1234"];
//        [[tc shouldNot] beNil];
//        [[[tc dateTime] shouldNot] beNil];
//        [[[tc text] should] equal:randomString];
//        [[[tc alias] should] equal:@"Bob"];
//        [[[tc senderId] should] equal:@"1234"];
//    });
//    it(@"Alias is null", ^{
//        OTTextMessage *tc = [[OTTextMessage alloc] initWithMessage:@"Good morning!" alias:nil senderId:@"1234"];
//        [[tc shouldNot] beNil];
//        [[[tc dateTime] shouldNot] beNil];
//        [[[tc alias] should] equal:@"Tokboxer"];
//        [[[tc text] should] equal:@"Good morning!"];
//        [[[tc senderId] should] equal:@"1234"];
//    });
//    it(@"Alias is empty", ^{
//        OTTextMessage *tc = [[OTTextMessage alloc] initWithMessage:@"Good morning!" alias:@"" senderId:@"1234"];
//        [[tc shouldNot] beNil];
//        [[[tc dateTime] shouldNot] beNil];
//        [[[tc alias] should] equal:@"Tokboxer"];
//        [[[tc text] should] equal:@"Good morning!"];
//        [[[tc senderId] should] equal:@"1234"];
//    });
//    it(@"Alias is long string", ^{
//        OTTextMessage *tc = [[OTTextMessage alloc] initWithMessage:@"Good morning!" alias:randomString senderId:@"1234"];
//        [[tc shouldNot] beNil];
//        [[[tc dateTime] shouldNot] beNil];
//        [[[tc alias] should] equal:randomString];
//        [[[tc text] should] equal:@"Good morning!"];
//        [[[tc senderId] should] equal:@"1234"];
//    });
//    it(@"SenderID is null", ^{
//        OTTextMessage *tc = [[OTTextMessage alloc] initWithMessage:@"Good morning!" alias:@"Bob" senderId:nil];
//        [[tc shouldNot] beNil];
//        [[[tc dateTime] shouldNot] beNil];
//        [[[tc senderId] shouldNot] equal:@""];
//        [[[tc text] should] equal:@"Good morning!"];
//        [[[tc alias] should] equal:@"Bob"];
//    });
//    it(@"SenderID is empty", ^{
//        OTTextMessage *tc = [[OTTextMessage alloc] initWithMessage:@"Good morning!" alias:@"Bob" senderId:@""];
//        [[tc shouldNot] beNil];
//        [[[tc dateTime] shouldNot] beNil];
//        [[[tc senderId] shouldNot] equal:@""];
//        [[[tc text] should] equal:@"Good morning!"];
//        [[[tc alias] should] equal:@"Bob"];
//    });
//    it(@"SenderID is long string", ^{
//        OTTextMessage *tc = [[OTTextMessage alloc] initWithMessage:@"Good morning!" alias:@"Bob" senderId:randomString];
//        [[tc shouldNot] beNil];
//        [[[tc dateTime] shouldNot] beNil];
//        [[[tc senderId] should] equal:randomString];
//        [[[tc text] should] equal:@"Good morning!"];
//        [[[tc alias] should] equal:@"Bob"];
//    });
//    it(@"Message is set properly", ^{
//        OTTextMessage *tc = [[OTTextMessage alloc] initWithMessage:@"Good morning!" alias:@"Bob" senderId:@"1234"];
//        [[tc shouldNot] beNil];
//        [[[tc dateTime] shouldNot] beNil];
//        [[[tc text] should] equal:@"Good morning!"];
//        [[[tc alias] should] equal:@"Bob"];
//        [[[tc senderId] should] equal:@"1234"];
//    });
//    
//});
//
//SPEC_END
