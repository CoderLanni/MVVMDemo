//
//  UserViewModel.h
//  MVVMDemo
//
//  Created by 小毅 on 2019/1/11.
//  Copyright © 2019 小毅. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserViewModel : NSObject



@property (nonatomic, strong) User *user;
@property (nonatomic, copy) NSString *userName;

- (instancetype)initWithUserName:(NSString *)userName userId:(NSInteger)userId;

//// 使用YYModel来处理
- (instancetype)initWithDataDictionary:(NSDictionary *)dataDict ;

@end

NS_ASSUME_NONNULL_END
