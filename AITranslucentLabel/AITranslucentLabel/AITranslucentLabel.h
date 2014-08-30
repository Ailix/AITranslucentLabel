//
//  AITranslucentLabel.h
//  AITranslucentLabel
//
//  Created by Ailix on 14-8-29.
//  Copyright (c) 2014年 NC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AITranslucentLabel : UIView

@property(nonatomic,copy)   NSString           *text;             // default is nil
@property(nonatomic,retain) UIFont             *font;            // default is nil (system font 17 plain)
@property(nonatomic,retain) UIColor            *textColor;      // default is nil (text draws white)
@property(nonatomic)        NSTextAlignment    textAlignment;  // default is NSTextAlignmentLeft
@property(nonatomic)        CGFloat            alphaValue;    // animatable. default is 0.5

@end
