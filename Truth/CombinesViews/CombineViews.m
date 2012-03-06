//
//  CombineViews.m
//  Truth
//
//  Created by guangyu zhao on 12-3-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CombineViews.h"

#import "FirstPage.h"
#import "PersonInfo.h"

@implementation CombineViews
- (id)init {
    self = [super init];
    if(nil != self)
    {
        PersonInfo *personInfo = [[PersonInfo alloc] init];
        FirstPage *firstPage = [[FirstPage alloc] init];    
        
        UITabBarController *tabBar = [[UITabBarController alloc] init];
        NSArray *viewControl = [NSArray arrayWithObjects:firstPage, personInfo, nil];
        tabBar.viewControllers = viewControl;
        //    [self.window.rootViewController.view addSubview:firstPage.view];
        //    [self.window.rootViewController.view addSubview:tabBar.view];
        [self.view addSubview:tabBar.view];
//
        //*/
//        [self.window makeKeyAndVisible];

//            [self createView];
    }
    return self ;
}
@end
