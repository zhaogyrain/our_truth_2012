//
//  PersonInfo.m
//  Truth
//
//  Created by guangyu zhao on 12-2-25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PersonInfo.h"
//#import "GoodsTableView.h"

@implementation PersonInfo
- (id)init {
    self = [super init];
	if(nil != self)
	{
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"personInfo" image:[UIImage imageNamed:@"dibuanniu-over.png"] tag:1];
        
        self.tabBarItem = item;
		[self createView];
//        [item release];
	}
	return self ;
}
- (void)createView {
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    //    UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIImageView * headBgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)] ;
    UIImage *headBgImg = [UIImage imageNamed:@"top.png"];
    headBgImgView.image = headBgImg ;
    [self.view addSubview: headBgImgView];
//    [headBgImgView release];
    //
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(130, 10, 100, 44)];
    nameLabel.text = @"个人中心";
    nameLabel.font = [UIFont systemFontOfSize:28];
    [self.view addSubview:nameLabel];
//    [nameLabel release];
    //    //
    UIImageView * headNameBgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(107.5, 0, 105, 37.5)] ;
    UIImage * headNameBgImg = [UIImage imageNamed:@"logo.png"];
    headNameBgImgView.image = headNameBgImg ;
    [self.view addSubview:headNameBgImgView];

    //    //    
	UIButton * findButton =[UIButton buttonWithType:UIButtonTypeCustom] ;
	findButton.frame = CGRectMake(280, 0, 33.5, 33.5) ;
	findButton.backgroundColor = [UIColor clearColor] ;
	[findButton setBackgroundImage:[UIImage imageNamed:@"shezhi.png"] forState:UIControlStateNormal] ;
	[findButton setBackgroundImage:[UIImage imageNamed:@"shezhi-over.png"] forState:UIControlStateHighlighted];
	[findButton addTarget:self action:@selector(ButtonClick:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
	findButton.tag = 1001;
	[self.view addSubview:findButton];
//    [findButton release];
        
    UIImageView * middleNameBgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 154, 7, 7)] ;
    UIImage * middleNameBgImg = [UIImage imageNamed:@"dian.png"];
    middleNameBgImgView.image = middleNameBgImg ;
    [self.view addSubview:middleNameBgImgView];
//    [middleNameBgImgView release];    

    UIButton * findButton1 =[UIButton buttonWithType:UIButtonTypeCustom] ;
	findButton1.frame = CGRectMake(280, 180, 133.5, 33.5) ;
	findButton1.backgroundColor = [UIColor clearColor] ;
//	[findButton setBackgroundImage:[UIImage imageNamed:@"shezhi.png"] forState:UIControlStateNormal] ;
//	[findButton setBackgroundImage:[UIImage imageNamed:@"shezhi-over.png"] forState:UIControlStateHighlighted];
    [findButton1 setTitle:@"新浪微博账号" forState:UIControlStateNormal];
	[findButton1 addTarget:self action:@selector(ButtonClick:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
	findButton1.tag = 1002;
	[self.view addSubview:findButton1];
//    [findButton1 release];

    
    UIImageView * middleNameBgImgView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 184, 7, 7)] ;
    UIImage * middleNameBgImg1 = [UIImage imageNamed:@"dian.png"];
    middleNameBgImgView1.image = middleNameBgImg1 ;
    [self.view addSubview:middleNameBgImgView1];
//    [middleNameBgImgView1 release];    

    UIButton * findButton2 =[UIButton buttonWithType:UIButtonTypeCustom] ;
	findButton2.frame = CGRectMake(280, 184, 33.5, 33.5) ;
	findButton2.backgroundColor = [UIColor clearColor] ;
    //	[findButton setBackgroundImage:[UIImage imageNamed:@"shezhi.png"] forState:UIControlStateNormal] ;
    //	[findButton setBackgroundImage:[UIImage imageNamed:@"shezhi-over.png"] forState:UIControlStateHighlighted];
    [findButton2 setTitle:@"新浪微博账号" forState:UIControlStateNormal];
	[findButton2 addTarget:self action:@selector(ButtonClick:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
	findButton2.tag = 1003;
	[self.view addSubview:findButton2];
//    [findButton2 release];

    
    UIImageView * middleNameBgImgView2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 214, 7, 7)] ;
    UIImage * middleNameBgImg2 = [UIImage imageNamed:@"dian.png"];
    middleNameBgImgView2.image = middleNameBgImg2 ;
    [self.view addSubview:middleNameBgImgView2];
//    [middleNameBgImgView2 release];    

    
    UIButton * findButton3 =[UIButton buttonWithType:UIButtonTypeCustom] ;
	findButton3.frame = CGRectMake(280, 214, 33.5, 33.5) ;
	findButton3.backgroundColor = [UIColor clearColor] ;
    //	[findButton setBackgroundImage:[UIImage imageNamed:@"shezhi.png"] forState:UIControlStateNormal] ;
    //	[findButton setBackgroundImage:[UIImage imageNamed:@"shezhi-over.png"] forState:UIControlStateHighlighted];
    [findButton3 setTitle:@"新浪微博账号" forState:UIControlStateNormal];
	[findButton3 addTarget:self action:@selector(ButtonClick:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
	findButton3.tag = 1004;
	[self.view addSubview:findButton3];
//    [findButton3 release];

    
    UIImageView * middleNameBgImgView3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 244, 7, 7)] ;
    UIImage * middleNameBgImg3 = [UIImage imageNamed:@"dian.png"];
    middleNameBgImgView3.image = middleNameBgImg3 ;
    [self.view addSubview:middleNameBgImgView3];
//    [middleNameBgImgView3 release];    
    
    UIButton * findButton4 =[UIButton buttonWithType:UIButtonTypeCustom] ;
	findButton4.frame = CGRectMake(280, 244, 33.5, 33.5) ;
	findButton4.backgroundColor = [UIColor clearColor] ;
    //	[findButton setBackgroundImage:[UIImage imageNamed:@"shezhi.png"] forState:UIControlStateNormal] ;
    //	[findButton setBackgroundImage:[UIImage imageNamed:@"shezhi-over.png"] forState:UIControlStateHighlighted];
    [findButton4 setTitle:@"新浪微博账号" forState:UIControlStateNormal];
	[findButton4 addTarget:self action:@selector(ButtonClick:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
	findButton4.tag = 1005;
	[self.view addSubview:findButton4];
//    [findButton4 release];

}    

@end
