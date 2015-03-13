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
        builder.textAlignment = NSTextAlignmentCenter;
    }];
    NSLog(@"%f",label.alphaValue);
    [self.view addSubview:label];
    
//    AITranslucentLabel *label2 = [[AITranslucentLabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(label.frame) + label.frame.size.height, label.frame.size.width, 44)];
    AITranslucentLabel *label2  = [[AITranslucentLabel alloc] init];
    label2.frame = CGRectMake(0, CGRectGetMaxY(label.frame) + label.frame.size.height, label.frame.size.width, 44);
    label2.text = @"Xavi2";
    label2.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label2];
    NSLog(@"%f",label2.alphaValue);

    // Do any additional setup after loading the view, typically from a nib.
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
