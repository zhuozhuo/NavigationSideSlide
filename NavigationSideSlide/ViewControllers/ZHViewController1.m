//
//  ViewController1.m
//  NavigationSideSlide
//
//  Created by yongzhuoJiang on 16/9/10.
//  Copyright © 2016年 yongzhuoJiang. All rights reserved.
//

#import "ZHViewController1.h"

@interface ZHViewController1 ()

@end

@implementation ZHViewController1


#pragma mark - View life
- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:animated];
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
