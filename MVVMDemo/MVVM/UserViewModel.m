//
//  UserViewModel.m
//  MVVMDemo
//
//  Created by 小毅 on 2019/1/11.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "UserViewModel.h"

@implementation UserViewModel



- (instancetype)initWithUserName:(NSString *)userName userId:(NSInteger)userId {
    self = [super init];
    if (!self) return nil;
    _user = [[User alloc] initWithUserName:userName userId:userId];
    if (_user.userName.length > 0) {
        _userName = _user.userName;
    } else {
        _userName = [NSString stringWithFormat:@"匿名用户%ld", _user.userId];
    }
    return self;
}


///**
// 使用YYModel来处理
//
// @param dataDict 数据data(dictionary类型)
// @return  ..
// */
//- (instancetype)initWithDataDictionary:(NSDictionary *)dataDict{
//    self = [super init];
//    if (!self) return nil;
//    _user = [User yy_modelWithDictionary:dataDict];
//    if (_user.userName.length > 0) {
//        _userName = _user.userName;
//    } else {
//        _userName = [NSString stringWithFormat:@"匿名用户%ld", _user.userId];
//    }
//    return self;
//    
//}



@end
