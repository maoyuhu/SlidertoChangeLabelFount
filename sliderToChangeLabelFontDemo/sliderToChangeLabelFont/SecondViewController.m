//
//  SecondViewController.m
//  slider改全局字体大小
//
//  Created by myh on 16/7/5.
//  Copyright © 2016年 myh. All rights reserved.
//

#import "SecondViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 200, 350, 50)];
   
    label.backgroundColor=[UIColor yellowColor];
    label.text = @"群成员信息群成员信息群成员";
    label.font = [UIFont systemFontOfSize:15];
    [label sizeToFit];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];


    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    label1.backgroundColor=[UIColor yellowColor];
    label1.text = @"maoyuhumaoyuhumaouhu";
    label1.font = [UIFont systemFontOfSize:15];
    label1.textAlignment = NSTextAlignmentCenter;
    [label1 sizeToFit];
    label1.textColor = [UIColor blackColor];
    [self.view addSubview:label1];


        }

@end
