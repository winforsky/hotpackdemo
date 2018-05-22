//
//  HotFixBookAudioService.h
//  hotdemo
//
//  Created by zsp on 2018/5/22.
//  Copyright © 2018年 LuckinFruit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HotFixBookAudioService : NSObject

+ (instancetype)shareInstance;

- (void)speakNextText:(NSString*)text;

@end
