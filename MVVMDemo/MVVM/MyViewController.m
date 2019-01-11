//
//  MyViewController.m
//  MVVMDemo
//
//  Created by 小毅 on 2019/1/11.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "MyViewController.h"
#import "UserViewModel.h"

@interface MyViewController ()


@property (nonatomic, strong) UILabel *userNameL;
@property (nonatomic, strong) UserViewModel *userViewModel;


@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title  = @"MVVM";
    self.view.backgroundColor = [UIColor whiteColor];

    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"显示" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 150, 200, 50);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(clickedShowBtn) forControlEvents:UIControlEventTouchUpInside];
    
    self.userNameL = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 150, 150)];
    self.userNameL.backgroundColor = [UIColor yellowColor];
    self.userNameL.font = [UIFont systemFontOfSize:19];
    [self.view addSubview:self.userNameL];
    
    
    _userViewModel = [[UserViewModel alloc] initWithUserName:@"TonyStark" userId:123456];
    
    //使用数据来c初始化
//    _userViewModel = [[UserViewModel alloc] initWithDataDictionary:@{@"userName":@"刘总",@"userId":@(453)}];

    
}

- (void)clickedShowBtn{
//    _userViewModel.userName = @"栗子";//直接属性修改
   _userViewModel = [_userViewModel initWithUserName:nil userId:10909]; //调用实例方法来赋值修改
    self.userNameL.text = _userViewModel.userName;

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
