//
//  HotFixBookAudioService.m
//  hotdemo
//
//  Created by zsp on 2018/5/22.
//  Copyright © 2018年 LuckinFruit. All rights reserved.
//

#import "HotFixBookAudioService.h"
#import <AVFoundation/AVFoundation.h>

@interface HotFixBookAudioService()

@property(nonatomic, strong)AVSpeechSynthesizer *synthesizer;

@end

@implementation HotFixBookAudioService

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    static HotFixBookAudioService *service;
    dispatch_once(&onceToken, ^{
        service=[[[self class] alloc] init];
    });
    return service;
}

- (void)speakNextText:(NSString*)text {
    if (text.length>0) {
        NSLog(@"text = %@", text);
        AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:text];
        utterance.rate = 0.55;
        utterance.pitchMultiplier = 1;
        utterance.volume = 1;
        [self.synthesizer speakUtterance:utterance];
    }
}

- (instancetype)init {
    if (self=[super init]) {
        
    }
    return self;
}

- (AVSpeechSynthesizer*)synthesizer {
    if (_synthesizer == nil) {
        _synthesizer=[AVSpeechSynthesizer new];
    }
    return _synthesizer;
}

@end
