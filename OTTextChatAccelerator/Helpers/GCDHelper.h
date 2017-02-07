//
//  GCDHelper.h
//
//  Copyright © 2016 Tokbox, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GCDHelper : NSObject

+ (void)executeDelayedWithBlock:(void (^)(void))block;

@end
