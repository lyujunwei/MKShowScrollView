//
//  RootViewController.h
//  MK_Use_ScrollView_ShowPhoto
//
//  Created by zucknet on 13/3/20.
//  Copyright (c) 2013年 zucknet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController<UINavigationBarDelegate>{
    NSArray *list;
    UINavigationBar *toolbar;
    
}

@property(nonatomic,strong)NSArray *list;
@property(nonatomic,strong)UINavigationBar *toolbar;

@end
