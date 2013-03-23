//
//  ShowViewController.h
//  MK_Use_ScrollView_ShowPhoto
//
//  Created by zucknet on 13/3/20.
//  Copyright (c) 2013年 zucknet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowViewController : UIViewController<UIScrollViewDelegate,UIGestureRecognizerDelegate>{
    UILabel *citylab;
    NSInteger defalutIndex;
    UIImageView *subView;
    
    UILabel *leftLab;
    
    UILabel *lab1;
    UILabel *lab2;
}

@property(nonatomic,strong)NSArray *colors;
@property(nonatomic,assign)NSInteger defalutIndex;

@end
