//
//  HotFixFelix.h
//  hotfixdemo
//
//  Created by zsp on 2018/5/22.
//  Copyright © 2018年 LuckinFruit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HotFixFelix : NSObject

/**
 注册bug 修复需要的上下文
 */
+ (void)fixIt;


/**
 执行bug修复的替换

 @param javascriptString <#javascriptString description#>
 */
+ (void)evalString:(NSString *)javascriptString;

@end
