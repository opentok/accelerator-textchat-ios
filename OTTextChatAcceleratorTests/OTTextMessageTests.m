//
//  OTTextMessageTests.m
//  OTTextChatKit
//
//  Created by Xi Huang on 1/30/17.
//  Copyright © 2017 Tokbox, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OTTextMessage.h"

@interface OTTextMessageTests : XCTestCase
@property (nonatomic) NSString *randomString;
@end

@implementation OTTextMessageTests

+ (void)setup {
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity: 100*1024*1024];
    
    for (int i=0; i<100; i++) {
        [randomString appendFormat: @"%c", [letters characterAtIndex: arc4random_uniform([letters length])]];
    }
}

- (void)testTextMessageNil {
    OTTextMessage *tc = [OTTextMessage messageWithSenderId:@"1234" alias:@"Bob" text:@"text"];
    XCTAssertNotNil(tc);
    XCTAssertNotNil(tc.dateTime);
    XCTAssertTrue([tc.text isEqualToString:@"text"]);
    XCTAssertTrue([tc.alias isEqualToString:@"Bob"]);
    XCTAssertTrue([tc.senderId isEqualToString:@"1234"]);
}

@end
