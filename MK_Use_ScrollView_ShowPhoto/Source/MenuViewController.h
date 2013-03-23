//
//  MenuViewController.h
//  MK_Use_ScrollView_ShowPhoto
//
//  Created by zucknet on 13/3/20.
//  Copyright (c) 2013年 zucknet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController<UINavigationBarDelegate,UITableViewDataSource,UITableViewDelegate>{
    NSArray *list;
    UINavigationBar *toolbar;
    UITableView *tableView;
    
}

@property(nonatomic,strong)NSArray *list;
@property(nonatomic,strong)UINavigationBar *toolbar;
@property(nonatomic,strong)UITableView *tableView;

@end
