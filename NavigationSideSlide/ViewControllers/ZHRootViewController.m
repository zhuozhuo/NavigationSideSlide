//
//  ZHRootViewController.m
//  ImcoWatch
//
//  Created by yongzhuoJiang on 16/6/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

#import "ZHRootViewController.h"

@interface ZHRootViewController ()

@end

@implementation ZHRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        self.navigationController.interactivePopGestureRecognizer.enabled = YES;      // 手势有效设置为YES  无效为NO
        self.navigationController.interactivePopGestureRecognizer.delegate = self;    // 手势的代理设置为self
    }
    // Do any additional setup after loading the view.
}


-(void)viewDidAppear:(BOOL)animated
{
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        if (self.navigationController.viewControllers.count==1) {
            self.navigationController.interactivePopGestureRecognizer.enabled = NO;
        }
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
