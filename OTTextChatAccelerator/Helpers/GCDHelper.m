//
//  GCDHelper.m
//
//  Copyright © 2016 Tokbox, Inc. All rights reserved.
//

#import "GCDHelper.h"

@implementation GCDHelper

+ (void)executeDelayedWithBlock:(void (^)(void))block {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), block);
}

@end
