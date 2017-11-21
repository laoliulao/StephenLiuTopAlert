//
//  ViewController.m
//  StephenLiuTopAlert
//
//  Created by stephen on 2017/11/21.
//  Copyright © 2017年 stephen. All rights reserved.
//

#import "ViewController.h"
#import "StephenLiuAlertManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)success:(UIButton *)sender {
    [StephenLiuAlertManager showAlertWithType:StephenLiuTopAlertTypeSuccess title:@"success"];}
- (IBAction)warning:(id)sender {[StephenLiuAlertManager showAlertWithType:StephenLiuAlertTypeError title:@"error"];
}
- (IBAction)fail:(id)sender {
    [StephenLiuAlertManager showAlertWithType:StephenLiuAlertTypeMessage title:@"下班回家吃饭了！"];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
