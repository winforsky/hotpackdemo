//
//  ViewController.m
//  hotdemo
//
//  Created by zsp on 2018/5/22.
//  Copyright © 2018年 LuckinFruit. All rights reserved.
//

#import "ViewController.h"
#import "HotFixMightCrash.h"
#import "HotFixBookAudioService.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self crashDemo];
    [self createUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)crashDemo {
    HotFixMightCrash *mightCrash = [[HotFixMightCrash alloc] init];
    NSInteger result = [mightCrash divideUsingDenominator:3];
    NSLog(@"result = %.3ld", (long)result);
    
    result = [mightCrash divideUsingDenominator:0];
    NSLog(@"result = %.3ld", (long)result);
}

- (void)createUI {
    UIButton *button=[UIButton buttonWithType:UIButtonTypeInfoLight];
    button.frame=CGRectMake(0, 0, 100, 100);
    button.center=self.view.center;
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClicked:(UIButton*)sender {
    [[HotFixBookAudioService shareInstance] speakNextText:@"前插、后插、替换某个方法都可以。使用类的方式很简单，NSClassFromString 即可，Selector 也一样 NSSelectorFromString，这样就能通过外部传入 String，内部动态构造 Class 和 Selector 来达到 Fix 的效果了。"];
}

@end
