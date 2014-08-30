//
//  AITranslucentLabel.m
//  AITranslucentLabel
//
//  Created by Ailix on 14-8-29.
//  Copyright (c) 2014年 NC. All rights reserved.
//

#import "AITranslucentLabel.h"

static NSInteger const titleLabelTag        = 100;
static NSInteger const translucentViewTag   = 200;
static CGFloat   const titleLabelOffsetX    = 20.0f;


@implementation AITranslucentLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self uiConfig];
    }
    return self;
}

- (void)dealloc
{
    self.font = nil;
    self.text = nil;
    [super dealloc];
}

- (void)setText:(NSString *)text
{
    if (_text != text) {
        [_text release];
        _text = [text copy];
        UILabel *titleLabel = (UILabel *)[self viewWithTag:titleLabelTag];
        titleLabel.text = _text;
    }
}

- (void)setFont:(UIFont *)font
{
    if (_font != font) {
        [_font release];
        _font = [font retain];
        UILabel *titleLabel = (UILabel *)[self viewWithTag:titleLabelTag];
        titleLabel.font = _font;
//        NSLog(@"%@",titleLabel.font);
    }
}

- (void)setTextColor:(UIColor *)textColor
{
    if (_textColor != textColor) {
        [_textColor release];
        _textColor = [textColor retain];
        UILabel *titleLabel = (UILabel *)[self viewWithTag:titleLabelTag];
        titleLabel.textColor = _textColor;
        NSLog(@"%@",titleLabel.textColor);
    }
}

- (void)setTextAlignment:(NSTextAlignment)textAlignment
{
    _textAlignment = textAlignment;
    UILabel *titleLabel = (UILabel *)[self viewWithTag:titleLabelTag];
    titleLabel.textAlignment = _textAlignment;
}

- (void)setAlphaValue:(CGFloat)alphaValue
{
    _alphaValue = alphaValue;
     UIView *translucentView = (UIView *)[self viewWithTag:translucentViewTag];
    translucentView.alpha = _alphaValue;
}

- (void)uiConfig
{
    CGRect rect = CGRectMake(0.0f, 0.0f, self.frame.size.width, self.frame.size.height);
    UIView *translucentView = [[UIView alloc] initWithFrame:rect];
    translucentView.tag = translucentViewTag;
//    translucentView.backgroundColor = self.backgroundColor;
    translucentView.backgroundColor = [UIColor blackColor];
    translucentView.alpha = 0.5;
    [self addSubview:translucentView];
    [translucentView release];
    
    CGRect rect2 = CGRectMake(titleLabelOffsetX, 0.0f, self.frame.size.width - 2*titleLabelOffsetX, self.frame.size.height);
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:rect2];
//    NSLog(@"%@",NSStringFromCGRect(titleLabel.frame));
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.tag = titleLabelTag;
    titleLabel.textColor = [UIColor whiteColor];
//    NSLog(@"%@",titleLabel.textColor);
    [self addSubview:titleLabel];
    [titleLabel release];
//    NSLog(@"%@",titleLabel.font);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
