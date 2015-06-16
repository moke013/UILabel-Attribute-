//
//  ViewController.m
//  MKLabel
//
//  Created by MK on 15/6/16.
//  Copyright (c) 2015年 ios. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Attribute.h"

//屏幕尺寸
#define APP_SCREEN_HEIGHT             [[UIScreen mainScreen] bounds].size.height
#define APP_SCREEN_WIDTH              [[UIScreen mainScreen] bounds].size.width

@interface ViewController ()

@property (nonatomic, strong) UILabel * mainLabel;
@property (nonatomic, copy) NSString * mainStr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * blueButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [blueButton setTitle:@"蓝色" forState:UIControlStateNormal];
    [blueButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    blueButton.backgroundColor = [UIColor whiteColor];
    blueButton.frame = CGRectMake(APP_SCREEN_WIDTH / 2 -50, 100, 100, 40);
    [blueButton addTarget:self action:@selector(blueColor) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:blueButton];
    
    UIButton * redButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [redButton setTitle:@"红色" forState:UIControlStateNormal];
    [redButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    redButton.backgroundColor = [UIColor whiteColor];
    redButton.frame = CGRectMake(APP_SCREEN_WIDTH / 2 -50, 180, 100, 40);
    [redButton addTarget:self action:@selector(redColor) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:redButton];
    
    _mainLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 280, APP_SCREEN_WIDTH - 20, 200)];
    _mainLabel.font = [UIFont boldSystemFontOfSize:17];
    _mainLabel.numberOfLines = 0;
    _mainLabel.backgroundColor = [UIColor whiteColor];
    _mainLabel.textColor = [UIColor blackColor];
    _mainStr = @"蓝色的天空，红色的火焰，蓝色的海洋，红色的花朵，蓝色的蓝莓，红色的草莓，蓝色的国米，红色的AC，蓝色的切尔西，红色的阿森纳，蓝色的曼城，红色的曼联，蓝色的沙尔克，红色的慕尼黑";
    [_mainLabel setAttribute:_mainStr ChangeStr:@"蓝色" Color:[UIColor blueColor]];
    [self.view addSubview:_mainLabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)blueColor {
    
    [_mainLabel setAttribute:_mainStr ChangeStr:@"蓝色" Color:[UIColor blueColor]];
    
}

- (void)redColor {
    
    [_mainLabel setAttribute:_mainStr ChangeStr:@"红色" Color:[UIColor redColor]];
    
}
@end
