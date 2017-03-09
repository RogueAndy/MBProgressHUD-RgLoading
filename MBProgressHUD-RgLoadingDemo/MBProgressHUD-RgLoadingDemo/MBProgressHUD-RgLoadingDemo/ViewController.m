//
//  ViewController.m
//  MBProgressHUD-RgLoadingDemo
//
//  Created by rogue on 2017/3/8.
//  Copyright © 2017年 RogueAndy. All rights reserved.
//

#import "ViewController.h"
#import "RgLoadingController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *s1 = [[UIBarButtonItem alloc] initWithTitle:@"开始" style:UIBarButtonItemStylePlain target:self action:@selector(startAction:)];
    UIBarButtonItem *s2 = [[UIBarButtonItem alloc] initWithTitle:@"结束" style:UIBarButtonItemStylePlain target:self action:@selector(endAction:)];
    self.navigationItem.leftBarButtonItem = s1;
    self.navigationItem.rightBarButtonItem = s2;
    
    UIButton *autoshow = [UIButton buttonWithType:UIButtonTypeCustom];
    autoshow.frame = CGRectMake(40, 200, self.view.frame.size.width - 80, 35);
    autoshow.backgroundColor = [UIColor redColor];
    [autoshow addTarget:self action:@selector(displayAuto:) forControlEvents:UIControlEventTouchUpInside];
    [autoshow setTitle:@"自动消失" forState:UIControlStateNormal];
    [self.view addSubview:autoshow];
    
    self.view.backgroundColor = [UIColor colorWithRed:235/255.f green:235/255.f blue:235/255.f alpha:1];
    
}

- (void)startAction:(UIButton *)sender {
    
    [RgLoadingController showLoadingActivityViewOn:self];
    
}

- (void)endAction:(UIButton *)sender {
    
    [RgLoadingController hideLoadingActivityViewOn:self];
    
}

- (void)displayAuto:(UIButton *)sender {
    
    [RgLoadingController showLoadingSoonDisplayActivityViewOn:self withTitle:@"显示2s" withAfter:2 withComplete:^{
        NSLog(@"用户提示完毕后，执行改行代码");
    }];
    
}

@end
