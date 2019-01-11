//
//  User.m
//  MVVMDemo
//
//  Created by 小毅 on 2019/1/11.
//  Copyright © 2019 小毅. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithUserName:(NSString *)userName userId:(NSInteger)userId {
    self = [super init];
    if (!self) return nil;
    _userId = userId;
    _userName = userName;
    return self;
}


@end
