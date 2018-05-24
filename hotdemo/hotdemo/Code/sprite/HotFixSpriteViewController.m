//
//  HotFixSpriteViewController.m
//  hotdemo
//
//  Created by zsp on 2018/5/23.
//  Copyright © 2018年 LuckinFruit. All rights reserved.
//

#import "HotFixSpriteViewController.h"
#import <SpriteKit/SpriteKit.h>

#import "HelloScene.h"
#import "GameScene.h"
@interface HotFixSpriteViewController ()

@property(nonatomic, strong)SKView *skView;

@end

@implementation HotFixSpriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configViewForSprite];
//    [self showHelloScene];
    [self showGameScene];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view 456
 controller.
}
*/

- (void)configViewForSprite {
    [self.view addSubview:self.skView];
}

- (void)showGameScene {
    // Load the SKScene from 'GameScene.sks'
    GameScene *scene = (GameScene *)[SKScene nodeWithFileNamed:@"GameScene"];
    
    // Set the scale mode to scale to fit the window
    scene.backgroundColor=SKColor.greenColor;
    scene.scaleMode = SKSceneScaleModeAspectFill;
    [self.skView presentScene:scene];
}

- (void)showHelloScene {
    HelloScene *scene = [HelloScene sceneWithSize:CGSizeMake(200, 200)];
    scene.scaleMode=SKSceneScaleModeAspectFill;
    [self.skView presentScene:scene];
}

- (SKView*)skView {
    if (_skView == nil) {
        _skView=[SKView new];
        _skView.backgroundColor=[UIColor blueColor];
        _skView.frame=self.view.bounds;
        _skView.showsFPS=YES;
        _skView.showsNodeCount=YES;
        _skView.showsDrawCount=YES;
    }
    return _skView;
}

@end
