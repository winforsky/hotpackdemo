//
//  ViewController.m
//  hotdemo
//
//  Created by zsp on 2018/5/22.
//  Copyright © 2018年 LuckinFruit. All rights reserved.
//

#import "ViewController.h"
#import "HotFixMightCrash.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self crashDemo];
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

@end
