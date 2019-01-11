//
//  ViewController.m
//  MVVMDemo
//
//  Created by 小毅 on 2019/1/9.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(50, 150, 200, 50);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(clickedSkipBtn) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickedSkipBtn{
    MyViewController *vc = [[MyViewController alloc]init];;
    [self.navigationController pushViewController:vc animated:YES];
}


@end
