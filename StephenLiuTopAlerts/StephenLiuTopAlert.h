//
//  StephenLiuTopAlert.h
//  顶部提示框
//
//  Created by stephen on 2017/11/16.
//  Copyright © 2017年 John Lai. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum : NSUInteger {
    StephenLiuAlertTypeError   = 0,  //失败
    StephenLiuTopAlertTypeSuccess  = 1,  //成功
    StephenLiuTopAlertTypeWarning  = 2,  //警告
    StephenLiuAlertTypeMessage = 3,  //普通提示消息
}StephenLiuTopAlertType;
@interface StephenLiuTopAlert : UIView
//提示框背景颜色，默认颜色3691D1  232，78，64
@property (nonatomic,weak) UIColor *alertBgColor;

//提示框显示时间，默认1.5s
@property (nonatomic,assign) CGFloat alertShowTime;

@property (nonatomic,strong) UIColor *textColor;

@property (nonatomic,assign) NSInteger statusStyle;

- (void)alertWithType:(StephenLiuTopAlertType)type title:(NSString *)title;

- (void)show;
@end
