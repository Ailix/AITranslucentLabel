//
//  AITL_SecondViewController.m
//  AITranslucentLabel
//
//  Created by makeupunion on 15/7/7.
//  Copyright (c) 2015年 Ailix. All rights reserved.
//

#import "AITL_SecondViewController.h"

@interface AITL_SecondViewController ()



@end

@implementation AITL_SecondViewController


#pragma mark - LifeCycle


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"01"]];




    CGRect bounds             = [UIScreen mainScreen].bounds;

    CGFloat screenWidth       = CGRectGetWidth(bounds);
//    CGFloat screenHeight = CGRectGetHeight(bounds);
    
    
    for (int i = 0; i<7; i++) {
        
        UILabel *label        = [UILabel new];
        label.frame           = CGRectMake(0, 54*i + 44, screenWidth, 44);

        label.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:.5];
        label.textColor       = [UIColor whiteColor];
        label.text            = @"Xavi";
        [self.view addSubview:label];
        
        
    }
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Accessor




@end
