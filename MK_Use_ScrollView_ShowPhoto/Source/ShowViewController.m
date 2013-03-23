//
//  ShowViewController.m
//  MK_Use_ScrollView_ShowPhoto
//
//  Created by zucknet on 13/3/20.
//  Copyright (c) 2013年 zucknet. All rights reserved.
//

#import "ShowViewController.h"
#define WIDTH_OF_VIEW   self.view.bounds.size.width
#define HEIGHT_OF_VIEW  self.view.bounds.size.height
#define IS_IPHONE5 CGSizeEqualToSize([[UIScreen mainScreen] preferredMode].size,CGSizeMake(640, 1136))

@interface ShowViewController ()

@property(nonatomic,strong)UIButton *backbtn;
@property(nonatomic,strong)UILabel *lab;
@property(nonatomic,strong)UIScrollView *scrollView;
@property(nonatomic,strong)UITapGestureRecognizer *tapGesture;


@end

@implementation ShowViewController
@synthesize colors;
@synthesize defalutIndex;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.backbtn =[UIButton buttonWithType:UIButtonTypeCustom];
        self.backbtn.frame = CGRectMake(10, 10, 30, 30);
        [self.backbtn setImage:[UIImage imageNamed:@"detail-back.png"] forState:UIControlStateNormal];
        [self.backbtn addTarget:self action:@selector(backRootVc) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.backbtn];
        
        
        leftLab = [[UILabel alloc]init];
        
        if (IS_IPHONE5) {
            self.lab = [[UILabel alloc]initWithFrame:CGRectMake(10,520, 320, 30)];
            leftLab.frame = CGRectMake(0, 520, 10, 30);
            
        } else {
            self.lab=[[UILabel alloc]initWithFrame:CGRectMake(10, 433, 320, 30)];
            leftLab.frame =CGRectMake(0, 433, 10, 30);
        }
        
        self.lab.text = @"上海博物馆";
        self.lab.textColor = [UIColor whiteColor];
        self.lab.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:0.85f];
        self.lab.font = [UIFont systemFontOfSize:13.0f];
        [self.view addSubview:self.lab];
        
        leftLab.backgroundColor = [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:0.85f];
        [self.view addSubview:leftLab];
        
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    
    [self scrollViewData];
    
    [self.scrollView setContentOffset:CGPointMake(defalutIndex*WIDTH_OF_VIEW, 0) animated:NO];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    if (IS_IPHONE5) {
        self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 548)];
    }else{
        self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
    }
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.delegate = self;
    
    [self.view addSubview:self.scrollView];
    
    self.tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTapGueture:)];
    self.tapGesture.delegate = self;
    self.tapGesture.numberOfTapsRequired = 1;
    self.tapGesture.numberOfTouchesRequired = 1;
    [self.view addGestureRecognizer:self.tapGesture];
    
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    // 过滤掉UIButton，也可以是其他类型
    if ( [touch.view isKindOfClass:[UIButton class]])
    {
        return NO;
    }
    return YES;
}

-(void)scrollViewData{
    
    colors = [NSArray arrayWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"7.jpg",nil];
    
    for (int i=0; i<colors.count; i++) {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width *i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        UIImageView *tmp = [[UIImageView alloc] initWithFrame:frame];
        tmp.image = [UIImage imageNamed:[colors objectAtIndex:i]];
        [self.scrollView addSubview:tmp];
        tmp.contentMode = UIViewContentModeScaleAspectFit;
        
    }
    
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width*colors.count, self.scrollView.frame.size.height);
    
}

-(void)handleTapGueture:(UITapGestureRecognizer *)Sender{
    
    if (Sender.numberOfTapsRequired == 1 && self.backbtn.hidden == YES) {
        self.backbtn.hidden = NO;
        self.lab.hidden = NO;
        leftLab.hidden = NO;
        
    } else {
        self.backbtn.hidden = YES;
        self.lab.hidden = YES;
        leftLab.hidden = YES;
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    CGFloat pageWidth = self.scrollView.frame.size.width;
    
    int page = floor((self.scrollView.contentOffset.x - pageWidth/2)/pageWidth) + 1;
    
    NSArray *labArray = [NSArray arrayWithObjects:@"上海博物馆",@"新天地石库门",@"立交桥",@"美术馆",@"豫园",@"上海大剧院",@"世博园",@"黄浦江",@"东方明珠",@"人民英勇纪念碑",@"南京路步行街",@"外滩",@"宋庆龄故居",@"外滩白天",@"外滩钟楼",@"金茂大厦",@"陆家嘴鸟巢",@"陈毅塑像",@"高架下",nil];
    
    self.lab.text = [labArray objectAtIndex:page];
}

-(void)backRootVc{
    
    NSLog(@"click....");
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
