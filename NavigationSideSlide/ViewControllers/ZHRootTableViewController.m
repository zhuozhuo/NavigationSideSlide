//
//  GitHub:https://github.com/zhuozhuo

//  博客：http://www.jianshu.com/users/39fb9b0b93d3/latest_articles

//  欢迎投稿分享：http://www.jianshu.com/collection/4cd59f940b02

//  Created by yongzhuoJiang on 16/6/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

#import "ZHRootTableViewController.h"


@interface ZHRootTableViewController ()

@end

@implementation ZHRootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",self.navigationController.interactivePopGestureRecognizer);
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        self.navigationController.interactivePopGestureRecognizer.enabled = YES;      // 手势有效设置为YES  无效为NO
        self.navigationController.interactivePopGestureRecognizer.delegate = self;    // 手势的代理设置为self
    }
    
    NSArray *gestureArray = self.navigationController.view.gestureRecognizers;//获取所有的手势
    
    //当是侧滑手势的时候设置panGestureRecognizer需要UIScreenEdgePanGestureRecognizer失效才生效即可
    for (UIGestureRecognizer *gesture in gestureArray) {
        if ([gesture isKindOfClass:[UIScreenEdgePanGestureRecognizer class]]) {
            [self.tableView.panGestureRecognizer requireGestureRecognizerToFail:gesture];
        }
    }
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
