//
//  ThirdViewController.m
//  slider改全局字体大小
//
//  Created by myh on 16/7/5.
//  Copyright © 2016年 myh. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    self.view.backgroundColor = [UIColor greenColor];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 100, 350, 50)];
    label.backgroundColor=[UIColor yellowColor];
    label.text = @"群成员信息群成员信息群成";
    label.font = [UIFont systemFontOfSize:15];
    [label sizeToFit];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(0, 500, 350, 50)];
    label1.backgroundColor=[UIColor yellowColor];
    label1.text = @"毛玉虎毛玉虎毛玉虎";
    label1.font = [UIFont systemFontOfSize:18];
    [label1 sizeToFit];
    label1.textAlignment = NSTextAlignmentCenter;
    label1.textColor = [UIColor blackColor];
    [self.view addSubview:label1];
    
    
}

@end
