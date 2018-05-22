//
//  HotFixService.m
//  hotdemo
//
//  Created by zsp on 2018/5/22.
//  Copyright © 2018年 LuckinFruit. All rights reserved.
//

#import "HotFixService.h"
#import "HotFixFelix.h"

@implementation HotFixService

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    static HotFixService *service;
    dispatch_once(&onceToken, ^{
        service = [[[self class] alloc] init];
    });
    return service;
}

- (void)fixbug {
    [HotFixFelix fixIt];
    
    NSString *fixScriptiString =@"\
    fixInstanceMethodReplace('HotFixMightCrash','divideUsingDenominator:',function(instance, originInvocation, originArguments){\
    if(originArguments[0] == 0) {\
    console.log('zero goes here ....');\
    }else{\
    runInvocation(originInvocation);\
    }\
    });\
    ";
    [HotFixFelix evalString:fixScriptiString];
}

@end
