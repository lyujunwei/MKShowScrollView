//
//  MenuCell.m
//  MK_Use_ScrollView_ShowPhoto
//
//  Created by zucknet on 13/3/20.
//  Copyright (c) 2013年 zucknet. All rights reserved.
//

#import "MenuCell.h"

@implementation MenuCell
@synthesize lab;
@synthesize showView;
@synthesize imageCell;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
