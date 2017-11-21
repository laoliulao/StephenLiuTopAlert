//
//  StephenLiuAlertManager.m
//  顶部提示框
//
//  Created by stephen on 2017/11/16.
//  Copyright © 2017年 John Lai. All rights reserved.
//

#import "StephenLiuAlertManager.h"
#define UIColorFromHex(hexValue) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0 green:((float)((hexValue & 0xFF00) >> 8)) / 255.0 blue:((float)(hexValue & 0xFF)) / 255.0 alpha:1.0f]
static StephenLiuTopAlert *_alert = nil;
@implementation StephenLiuAlertManager
+ (void)showAlertWithType:(StephenLiuTopAlertType)type title:(NSString *)title{
    if (_alert) {
        [_alert removeFromSuperview];
    }
    _alert = [[StephenLiuTopAlert alloc]init];
    [_alert alertWithType:type title:title];
    
    if (type == StephenLiuTopAlertTypeSuccess) {
        _alert.alertBgColor = [UIColor whiteColor];
        _alert.textColor = [UIColor blackColor];
    }else if (type == StephenLiuAlertTypeError){
        _alert.alertBgColor = UIColorFromHex(0xff6460);
    }else if (type == StephenLiuAlertTypeMessage){
        _alert.alertBgColor = [UIColor whiteColor];
        _alert.textColor = [UIColor blackColor];
    }

    _alert.alertShowTime = 1.5f;
    [_alert show];
}
+ (void)showAlertWithType:(StephenLiuTopAlertType)type title:(NSString *)title showTime:(CGFloat)showTime{
    if (_alert) {
        [_alert removeFromSuperview];
    }
    _alert = [[StephenLiuTopAlert alloc]init];
    [_alert alertWithType:type title:title];
    
    if (type == StephenLiuTopAlertTypeSuccess) {
        _alert.alertBgColor = [UIColor whiteColor];
        _alert.textColor = [UIColor blackColor];
    }else if (type == StephenLiuAlertTypeError){
        _alert.alertBgColor = UIColorFromHex(0xff6460);
    }else if (type == StephenLiuAlertTypeMessage){
        _alert.alertBgColor = [UIColor whiteColor];
        _alert.textColor = [UIColor blackColor];
    }
    
    _alert.alertShowTime = showTime;
    [_alert show];
}
@end
