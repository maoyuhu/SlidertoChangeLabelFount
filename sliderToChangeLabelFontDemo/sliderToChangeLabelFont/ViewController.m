//
//  ViewController.m
//  sliderToChangeLabelFont
//
//  Created by myh on 16/7/10.
//  Copyright © 2016年 myh. All rights reserved.
//

#import "ViewController.h"
#import "MYHSliderChangeLabelFont.h"

@interface ViewController (){
    
    
    int _value;
    CGRect _rect;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 100 ,350, 50)];
    
    label.backgroundColor=[UIColor yellowColor];
    label.text = @"群成员信息群成员信息群成员";
    label.font = [UIFont systemFontOfSize:15];
    [label sizeToFit];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    label.tag = 10;
    [self.view addSubview:label];
    /**
     *  实例化对象
     */
    MYHSliderChangeLabelFont *slider = [MYHSliderChangeLabelFont shareInsance];
    
    int  currentFloat = label.font.pointSize;
    _rect = CGRectMake(20, 300, 200, 30);
    [slider setupSliderWithFrame:_rect addView:self.view minValue:13 maxValue:25 currentValue:currentFloat];
}
@end
