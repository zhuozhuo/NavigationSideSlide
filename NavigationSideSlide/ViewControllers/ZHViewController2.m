//
//  ViewController2.m
//  NavigationSideSlide
//
//  Created by yongzhuoJiang on 16/9/10.
//  Copyright © 2016年 yongzhuoJiang. All rights reserved.
//

#import "ZHViewController2.h"

@interface ZHViewController2 ()

@end

@implementation ZHViewController2


#pragma mark - View life
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
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
