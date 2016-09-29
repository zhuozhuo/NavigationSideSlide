//
//  GitHub:https://github.com/zhuozhuo

//  博客：http://www.jianshu.com/users/39fb9b0b93d3/latest_articles

//  欢迎投稿分享：http://www.jianshu.com/collection/4cd59f940b02


//  Created by yongzhuoJiang on 16/9/10.
//  Copyright © 2016年 yongzhuoJiang. All rights reserved.
//

#import "ZHViewController2.h"

@interface ZHViewController2 (){
    UIScrollView *showScrollView;
    
}


@end

@implementation ZHViewController2


#pragma mark - View life
- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    self.automaticallyAdjustsScrollViewInsets = NO;
    showScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    showScrollView.pagingEnabled = YES;
    [self.view insertSubview:showScrollView atIndex:0];
    for (NSInteger i = 0; i<4; i++) {
        UIView *view = [[UIView alloc]init];
        if (i%2 == 0) {
            view.backgroundColor = [UIColor orangeColor];
        }else{
            view.backgroundColor = [UIColor blueColor];
        }
        view.frame = CGRectMake(width * i, 0,  width, height);
        [showScrollView addSubview:view];
    }
    showScrollView.contentSize = CGSizeMake(width * 4, height);
    NSArray *gestureArray = self.navigationController.view.gestureRecognizers;
    //当是侧滑手势的时候设置scrollview需要此手势失效才生效即可
    for (UIGestureRecognizer *gesture in gestureArray) {
        if ([gesture isKindOfClass:[UIScreenEdgePanGestureRecognizer class]]) {
            [showScrollView.panGestureRecognizer requireGestureRecognizerToFail:gesture];
        }
    }

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
