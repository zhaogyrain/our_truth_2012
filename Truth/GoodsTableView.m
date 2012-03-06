//
//  GoodsTableView.m
//  Truth
//
//  Created by guangyu zhao on 12-2-25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "GoodsTableView.h"


@implementation GoodsTableView

- (id)initWithFrame:(CGRect )frame {
    self = [super init];
	if(nil != self)
	{
		[self createView:frame];
	}
	return self ;
}
- (void)createView:(CGRect)frame {
    self.tableView = [[UITableView alloc] initWithFrame:frame];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//	int num = m_data.dataSourceNum + 1; //这个1 是最后一个cell 提示上提加载
	return 8;//num;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
//	int row = indexPath.row;
	
    NSString *CellIdentifier = [NSString stringWithFormat:@"WeiBoListViewCellLast"];
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
        
//        [cell addSubview:upRefreshSpinner];
    }
    UILabel *textUpLable = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 80 , 30 )] ;
    textUpLable.textAlignment = UITextAlignmentCenter ;
    textUpLable.backgroundColor = [UIColor clearColor] ;
    textUpLable.text = @"姓名 姓名";//self.textUpPull ;
    textUpLable.font = [UIFont systemFontOfSize:14] ;
    textUpLable.textColor = [UIColor grayColor];

    UILabel *textUpLable1 = [[UILabel alloc] initWithFrame:CGRectMake(40, 30, 80 , 20 )] ;
    textUpLable1.textAlignment = UITextAlignmentCenter ;
    textUpLable1.backgroundColor = [UIColor clearColor] ;
    textUpLable1.text = @"地址 地址";//self.textUpPull ;
    textUpLable1.font = [UIFont systemFontOfSize:8] ;
    textUpLable1.textColor = [UIColor grayColor];

    
    UILabel *textUpLable2 = [[UILabel alloc] initWithFrame:CGRectMake(140, 10, 80 , 20 )] ;
    textUpLable2.textAlignment = UITextAlignmentCenter ;
    textUpLable2.backgroundColor = [UIColor clearColor] ;
    textUpLable2.text = @"时间 时间";//self.textUpPull ;
    textUpLable2.font = [UIFont systemFontOfSize:11] ;
    textUpLable2.textColor = [UIColor grayColor];

    UILabel *textUpLable3 = [[UILabel alloc] initWithFrame:CGRectMake(240, 10, 80 , 20 )] ;
    textUpLable3.textAlignment = UITextAlignmentCenter ;
    textUpLable3.backgroundColor = [UIColor clearColor] ;
    textUpLable3.text = @"最低价格";//self.textUpPull ;
    textUpLable3.font = [UIFont systemFontOfSize:11] ;
    textUpLable3.textColor = [UIColor grayColor];

    UILabel *textUpLable4 = [[UILabel alloc] initWithFrame:CGRectMake(250, 20, 80 , 20 )] ;
    textUpLable4.textAlignment = UITextAlignmentCenter ;
    textUpLable4.backgroundColor = [UIColor clearColor] ;
    textUpLable4.text = @"￥199";//self.textUpPull ;
    textUpLable4.font = [UIFont systemFontOfSize:11] ;
    textUpLable4.textColor = [UIColor grayColor];

    UILabel *textUpLable5 = [[UILabel alloc] initWithFrame:CGRectMake(260, 30, 80 , 20 )] ;
    textUpLable5.textAlignment = UITextAlignmentCenter ;
    textUpLable5.backgroundColor = [UIColor clearColor] ;
    textUpLable5.text = @"淘宝";//self.textUpPull ;
    textUpLable5.font = [UIFont systemFontOfSize:11] ;
    textUpLable5.textColor = [UIColor grayColor];

    
    UIImageView * headBgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(8, 8, 30, 30)] ;
    UIImage *headBgImg = [UIImage imageNamed:@"top.png"];
    headBgImgView.image = headBgImg ;
    [cell.contentView addSubview: headBgImgView];

    UIImageView * headBgImgView1 = [[UIImageView alloc] initWithFrame:CGRectMake(34, 28, 24, 24)] ;
    UIImage *headBgImg1 = [UIImage imageNamed:@"touxiang.png"];
    headBgImgView1.image = headBgImg1 ;
    [cell.contentView addSubview: headBgImgView1];

    UIImageView * headBgImgView2 = [[UIImageView alloc] initWithFrame:CGRectMake(270, 2, 0.5, 43)] ;
    UIImage *headBgImg2 = [UIImage imageNamed:@"fenge.png"];
    headBgImgView2.image = headBgImg2 ;
    [cell.contentView addSubview: headBgImgView2];
    
    
    [cell.contentView addSubview:textUpLable] ;
    [cell.contentView addSubview:textUpLable1] ;
    [cell.contentView addSubview:textUpLable2] ;
    [cell.contentView addSubview:textUpLable3] ;
    [cell.contentView addSubview:textUpLable4] ;
    [cell.contentView addSubview:textUpLable5] ;

    [cell setUserInteractionEnabled:NO];
    return cell ;
//    }
}    

@end
