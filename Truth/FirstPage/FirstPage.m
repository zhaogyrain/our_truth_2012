//
//  FirstPage.m
//  Truth
//
//  Created by guangyu zhao on 12-2-25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FirstPage.h"
#import "GoodsTableView.h"
#import "SearchPage.h"

@implementation FirstPage 

- (id)init {
    self = [super init];
	if(nil != self)
	{
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"asdfsadf" image:[UIImage imageNamed:@"dibuanniu-over.png"] tag:0];

        self.tabBarItem = item;
        [item release];
		[self createView];
	}
	return self ;
}
- (void)createView {
//    UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIImageView * headBgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)] ;
    UIImage *headBgImg = [UIImage imageNamed:@"top.png"];
    headBgImgView.image = headBgImg ;
    [self.view addSubview: headBgImgView];
    //
    UIImageView * headNameBgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(107.5, 0, 105, 37.5)] ;
    UIImage * headNameBgImg = [UIImage imageNamed:@"logo.png"];
    headNameBgImgView.image = headNameBgImg ;
    [self.view addSubview:headNameBgImgView];
//    //
//    //    
	UIButton * findButton =[UIButton buttonWithType:UIButtonTypeCustom] ;
	findButton.frame = CGRectMake(280, 0, 33.5, 33.5) ;
	findButton.backgroundColor = [UIColor clearColor] ;
	[findButton setBackgroundImage:[UIImage imageNamed:@"sousuo.png"] forState:UIControlStateNormal] ;
	[findButton setBackgroundImage:[UIImage imageNamed:@"sousuo-over.png"] forState:UIControlStateHighlighted];
	[findButton addTarget:self action:@selector(buttonClick:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
	findButton.tag = 1001;
	[self.view addSubview:findButton];
    
    
    UIButton * saoMiaoButton =[UIButton buttonWithType:UIButtonTypeCustom] ;
	saoMiaoButton.frame = CGRectMake(0, 44, 320, 110) ;
	saoMiaoButton.backgroundColor = [UIColor clearColor] ;
	[saoMiaoButton setBackgroundImage:[UIImage imageNamed:@"saomiao.png"] forState:UIControlStateNormal] ;
	[saoMiaoButton setBackgroundImage:[UIImage imageNamed:@"saomiao-over.png"] forState:UIControlStateHighlighted];
	[saoMiaoButton addTarget:self action:@selector(buttonClick:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
	saoMiaoButton.tag = 1002;
	[self.view addSubview:saoMiaoButton];

    UIImageView * middleNameBgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 154, 320, 26.5f)] ;
    UIImage * middleNameBgImg = [UIImage imageNamed:@"dajiaguanxin.png"];
    middleNameBgImgView.image = middleNameBgImg ;
    [self.view addSubview:middleNameBgImgView];

    GoodsTableView *tableView = [[GoodsTableView alloc] initWithFrame:CGRectMake(0, 180.5, 320, 240)];
    [self.view addSubview:tableView.tableView];
    
//    UITabBarController *tabBar = [[UITabBarController alloc] init];
////    [tabBar .view setFrame:CGRectMake(0, self.view.frame.size.height - 49, self.view.frame.size.width, 49)];
//    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"asdfsadf" image:[UIImage imageNamed:@"top.png"] tag:0];
//    NSArray *viewControl = [NSArray arrayWithObjects:tableView, tableView, nil];
//    tabBar.viewControllers = viewControl;
//    tabBar.tabBarItem = item;
//    [item release];
//    
////    tabBar.items = [NSArray arrayWithObjects:@"11",@"11",@"11",@"11", nil];    
//    [self.view addSubview:tabBar.view];

}
- (void)buttonClick:(UIButton *)sender {    
    
    int numTag = sender.tag;
    if (numTag == 1001) {
        SearchPage *searcher = [[SearchPage alloc] init];
//        [[[[self tabBarController] selectedViewController] navigationController] pushViewController:searcher animated:YES];
        [self.navigationController pushViewController:searcher animated:YES];
//        self.navigationController = [[[UINavigationController alloc] initWithRootViewController:searcher] autorelease];
//        self.navigationController.navigationBarHidden = YES;
//        [self.window addSubview:self.navigationController.view];

//        [self.view addSubview:searcher.view];
//        [[[[UINavigationController alloc] initWithRootViewController:searcher] autorelease] pushViewController:searcher animated:YES];
        NSLog(@"button click 1001");
    } else if (numTag == 1002) {
        NSLog(@"button click 1002");
    }
}
//-(void)loadView {
//}

@end
