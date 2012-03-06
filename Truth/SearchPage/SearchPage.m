//
//  SearchPage.m
//  Truth
//
//  Created by guangyu zhao on 12-3-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SearchPage.h"

@implementation SearchPage

- (id)init {
    self = [super init];
	if(nil != self)
	{
		[self createView];
	}
	return self ;
}


- (void)createView {
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    UIImageView * headBgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)] ;
    UIImage *headBgImg = [UIImage imageNamed:@"top.png"];
    headBgImgView.image = headBgImg ;
    [self.view addSubview: headBgImgView];
    [headBgImgView release];

    UIImageView * headBgImgView3 = [[UIImageView alloc] initWithFrame:CGRectMake(43, 10, 517 / 2.0f, 25.5)] ;
//    UIImageView * headBgImgView3 = [[UIImageView alloc] initWithFrame:CGRectMake(40, 10, 260, 25.5)] ;
    UIImage *headBgImg3 = [UIImage imageNamed:@"sousuoshurukuang.png"];
    headBgImgView3.image = headBgImg3 ;
    [self.view addSubview: headBgImgView3];
//    [headBgImgView3 release];

    delButton = [UIButton buttonWithType:UIButtonTypeCustom] ;
    delButton.frame = CGRectMake(231, 10, 21, 21);//(10, 300, 150, 50) ;    
    [delButton setBackgroundImage:[[UIImage imageNamed:@"sousuoquxiao.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
    [delButton setBackgroundImage:[[UIImage imageNamed:@"sousuoquxiao-over.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateHighlighted];
    
    delButton.tag = 1008 ;
    [delButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside] ;
    delButton.hidden = YES;
    headBgImgView3.userInteractionEnabled = YES;
    [headBgImgView3 addSubview:delButton];
    [headBgImgView3 release];

    
    UIButton * findButton =[UIButton buttonWithType:UIButtonTypeCustom] ;
	findButton.frame = CGRectMake(6, 10, 33.5, 33.5) ;
	findButton.backgroundColor = [UIColor clearColor] ;
	[findButton setBackgroundImage:[UIImage imageNamed:@"fanhui.png"] forState:UIControlStateNormal] ;
	[findButton setBackgroundImage:[UIImage imageNamed:@"fanhui-over.png"] forState:UIControlStateHighlighted];
	[findButton addTarget:self action:@selector(buttonClick:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
	findButton.tag = 1005;
	[self.view addSubview:findButton];

    UIButton * findButton2 =[UIButton buttonWithType:UIButtonTypeCustom] ;
	findButton2.frame = CGRectMake(290, 10, 14, 15.5) ;
	findButton2.backgroundColor = [UIColor clearColor] ;
	[findButton2 setBackgroundImage:[UIImage imageNamed:@"slj.png"] forState:UIControlStateNormal] ;
	[findButton2 setBackgroundImage:[UIImage imageNamed:@"slj-over.png"] forState:UIControlStateHighlighted];
	[findButton2 addTarget:self action:@selector(buttonClick:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
	findButton2.tag = 1006;
	[self.view addSubview:findButton2];
    
    UIImageView * headBgImgView2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 44, 320, 26.5)] ;
    UIImage *headBgImg2 = [UIImage imageNamed:@"guanjianciremen.png"];
    headBgImgView2.image = headBgImg2 ;
    [self.view addSubview: headBgImgView2];
    [headBgImgView2 release];
    
    searchField = [[[UITextField alloc] initWithFrame:CGRectMake(43, 10, 200, 41.5)] autorelease];	
	searchField.textColor = [UIColor whiteColor];
	searchField.font = [UIFont systemFontOfSize:14] ;
	searchField.backgroundColor = [UIColor clearColor] ;
	searchField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;  
	[searchField setReturnKeyType:UIReturnKeySearch];
	searchField.placeholder = @"输入对方昵称";
//	searchField.delegate = self;
    [self.view addSubview:searchField];
    searchField.tag = 1007;
    //	searchField.enabled = isEdit;  //TODO:不可编辑时打开，即只能查看的时候	
	[searchField addTarget:self action:@selector(buttonClick:)forControlEvents:UIControlEventEditingChanged];


}

- (void)buttonClick:(UIButton *)sender {    
    int numTag = sender.tag;
    if (numTag == 1005) {
//        SearchPage *searcher = [[SearchPage alloc] init];
//        [self.navigationController pushViewController:searcher animated:YES];
        [self.navigationController popViewControllerAnimated:YES];
        NSLog(@"button click 1005");
    } 
    else if (numTag == 1006) {
        NSLog(@"button click 1006");
    }
    else if (numTag == 1007) {
        if (![searchField.text isEqualToString:@""]) {
            delButton.hidden = NO;
        } else {
            delButton.hidden = YES;
        }

        NSLog(@"button click 1007");
        return;
    }
    else if (numTag == 1008) {
        searchField.text = @"";
        NSLog(@"button click 1008");

    }
    [searchField resignFirstResponder];
}

@end
