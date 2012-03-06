//
//  SearchPage.h
//  Truth
//
//  Created by guangyu zhao on 12-3-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SearchPage : UIViewController {
    UIButton *delButton;
    UITextField *searchField;
}
- (void)createView;
- (id)init;

@end
