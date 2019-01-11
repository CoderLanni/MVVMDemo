//
//  User.h
//  MVVMDemo
//
//  Created by 小毅 on 2019/1/11.
//  Copyright © 2019 小毅. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject


@property (nonatomic, copy) NSString *userName;
@property (nonatomic, assign) NSInteger userId;

- (instancetype)initWithUserName:(NSString *)userName userId:(NSInteger)userId;

@end

NS_ASSUME_NONNULL_END
