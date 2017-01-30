//
//  OTTextChatKitBundle.m
//
//  Copyright © 2016 Tokbox, Inc. All rights reserved.
//

#import "OTTextChatKitBundle.h"
#import "OTTextChatViewController.h"

@implementation OTTextChatKitBundle

+ (NSBundle *)textChatKitBundle {
    
    NSURL *textChatKitBundleURL = [[NSBundle mainBundle] URLForResource:@"OTTextChatKitBundle" withExtension:@"bundle"];
    if (textChatKitBundleURL){
        NSBundle *textChatViewBundle = [NSBundle bundleWithURL:textChatKitBundleURL];
        if (!textChatViewBundle.isLoaded) {
            [textChatViewBundle load];
        }
        return textChatViewBundle;
    }
    
    textChatKitBundleURL = [[NSBundle bundleForClass:[OTTextChatViewController class]] URLForResource:@"OTTextChatKitBundle" withExtension:@"bundle"];
    if (textChatKitBundleURL) {
        NSBundle *textChatViewBundle = [NSBundle bundleWithURL:textChatKitBundleURL];
        if (!textChatViewBundle.isLoaded) {
            [textChatViewBundle load];
        }
        return textChatViewBundle;
    }
    
    return  nil;
}

@end
