//
//  StephenLiuAlertManager.h
//  顶部提示框
//
//  Created by stephen on 2017/11/16.
//  Copyright © 2017年 John Lai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StephenLiuTopAlert.h"
@interface StephenLiuAlertManager : NSObject
//提示框显示时间，默认1.5s
@property (nonatomic,assign) CGFloat alertShowTime;

/**
 默认1。5秒自动隐藏

 @param type 弹框显示类型
 @param title 显示文字
 */
+ (void)showAlertWithType:(StephenLiuTopAlertType)type title:(NSString *)title;

/**
 自定义显示时长

 @param type 弹框显示类型
 @param title 显示文字
 @param showTime 显示时间
 */
+ (void)showAlertWithType:(StephenLiuTopAlertType)type title:(NSString *)title showTime:(CGFloat)showTime;
@end
