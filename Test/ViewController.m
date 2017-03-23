//
//  ViewController.m
//  Test
//
//  Created by wwwwwwww on 2017/3/21.
//  Copyright © 2017年 wwwwwwww. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(10, 50, 100, 50)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = YES;
}

- (void)btnAction:(UIButton *)button
{
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    [self.navigationController pushViewController:firstVC animated:NO];
    
}

//是否可以旋转
 - (BOOL)shouldAutorotate
 {
         return false;
     }
 //支持的方向
 -(UIInterfaceOrientationMask)supportedInterfaceOrientations
 {
         return UIInterfaceOrientationMaskPortrait;
     }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
