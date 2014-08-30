//
//  RootViewController.m
//  AITranslucentLabel
//
//  Created by Ailix on 14-8-29.
//  Copyright (c) 2014年 NC. All rights reserved.
//

#import "RootViewController.h"
#import "AITranslucentLabel.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"01.jpg"]];
    for (int i=0; i<9; i++) {
        AITranslucentLabel *label = [[AITranslucentLabel alloc] initWithFrame:CGRectMake(0,20.0f+i*50.0f, self.view.bounds.size.width, 44.0f)];
//        label.backgroundColor = [UIColor blackColor];
        label.text = @"Xavi";
        label.font = [UIFont systemFontOfSize:24];
//        label.textColor = [UIColor blueColor];
//        label.alphaValue = 0.2;
//        label.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:label];
        [label release];

    }
    



	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
