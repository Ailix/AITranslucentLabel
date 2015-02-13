

#import <UIKit/UIKit.h>

@class AITranslucentLabelBuilder;


typedef void(^AITranslucentLabelBuilderBlock)(AITranslucentLabelBuilder *builder);


@interface AITranslucentLabel : UIView

/** 文本 */
@property(nonatomic,copy)   NSString           *text;

/** 字体 */
@property(nonatomic,strong) UIFont             *font;

/** 文本颜色 */
@property(nonatomic,strong) UIColor            *textColor;

/** 对齐方式 */
@property(nonatomic)        NSTextAlignment    textAlignment;

/** 透明度 */
@property(nonatomic)        CGFloat            alphaValue;


/**
 *  构造方法
 *
 *  @param builderBlock 构造器代码块
 *
 *  @return AITranslucentLabel实例对象
 */
+ (instancetype)labelWithBuilder:(AITranslucentLabelBuilderBlock)builderBlock;


@end

@interface AITranslucentLabelBuilder : NSObject

/** 文本 */
@property (nonatomic,copy  ) NSString        *text;

/** 字体 */
@property (nonatomic,strong) UIFont          *font;

/** 文本颜色 */
@property (nonatomic,strong) UIColor         *textColor;

/** 对齐方式 */
@property (nonatomic       ) NSTextAlignment textAlignment;

/** 透明度 */
@property (nonatomic       ) CGFloat         alphaValue;

@property (nonatomic       ) CGRect          frame;

/**
 *  构造器检查属性
 *
 *  @return AITranslucentLabel实例对象
 */
- (AITranslucentLabel *)build;

@end