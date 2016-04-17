//
//  NSString+MyImplementation.m
//  runtime
//
//  Created by 张星宇 on 16/1/2.
//  Copyright © 2016年 张星宇. All rights reserved.
//

#import "NSString+MyImplementation.h"

@implementation NSString (MyImplementation)

- (NSString *)myLowercaseString {
    NSLog(@"转换大写!!!");
    return [self uppercaseString];




}

@end
