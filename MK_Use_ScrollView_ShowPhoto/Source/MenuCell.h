//
//  MenuCell.h
//  MK_Use_ScrollView_ShowPhoto
//
//  Created by zucknet on 13/3/20.
//  Copyright (c) 2013年 zucknet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuCell : UITableViewCell{
    IBOutlet UILabel *lab;
    IBOutlet UIImageView *imageCell;
    IBOutlet UIView *showView;
}

@property(nonatomic,strong)IBOutlet UILabel *lab;
@property(nonatomic,strong)IBOutlet UIImageView *imageCell;
@property(nonatomic,strong)IBOutlet UIView *showView;


@end
