//
//  ViewController.m
//  AITranslucentLabel
//
//  Created by Ailix on 15/2/13.
//  Copyright (c) 2015年 Ailix. All rights reserved.
//

#import "ViewController.h"
#import "AITranslucentLabel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"01.jpg"]];

    AITranslucentLabel *label = [AITranslucentLabel labelWithBuilder:^(AITranslucentLabelBuilder *builder) {
        builder.frame = CGRectMake(0, 100, self.view.frame.size.width, 44);
        builder.text  = @"Xavi";
        builder.alphaValue = .5;
    }];
    [self.view addSubview:label];
    // Do any additional setup after loading the view, typically from a nib.
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
