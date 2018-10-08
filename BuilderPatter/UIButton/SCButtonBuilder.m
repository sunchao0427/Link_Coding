//
//  SCButtonBuilder.m
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SCButtonBuilder.h"

@interface SCButtonBuilder()
@property (nonatomic, strong) UIButton *button;

@end

@implementation SCButtonBuilder

- (instancetype)init{
    self = [super init];
    if (self) {
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    }
    return self;
}


- (SCButtonBuilder *(^)(NSString *))title{
    return ^SCButtonBuilder *(NSString *title){
        [self.button setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (SCButtonBuilder *(^)(UIColor *))titleColor{
    return ^SCButtonBuilder *(UIColor *titleColor){
        [self.button setTitleColor:titleColor forState:UIControlStateNormal];
        return self;
    };
}

- (SCButtonBuilder *(^)(UIColor *))highlilghtedTitleColor{
    return ^SCButtonBuilder *(UIColor *hightlightTitleColor){
        [self.button setTitleColor:hightlightTitleColor forState:UIControlStateHighlighted];
        [self.button setTitleColor:hightlightTitleColor forState:UIControlStateSelected];
        return self;
    };
}

- (SCButtonBuilder *(^)(UIFont *font))font{
    return ^SCButtonBuilder *(UIFont *font){
        self.button.titleLabel.font = font;
        return self;
    };
}

- (SCButtonBuilder *(^)(CGFloat fontSize))fontSize{
    return ^SCButtonBuilder *(CGFloat fontSize){
        UIFont *font = [UIFont systemFontOfSize:fontSize];
        self.button.titleLabel.font = font;
        return self;
    };
}

-(SCButtonBuilder *(^)(CGFloat cornerRadius))cornerRadius{
    return ^SCButtonBuilder *(CGFloat cornerRadius){
        self.button.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (SCButtonBuilder *(^)(UIColor *backgroundColor))backgroundColor{
    return ^SCButtonBuilder *(UIColor *backgroundColor){
        [self.button setBackgroundColor:backgroundColor];
        return self;
    };
}

- (SCButtonBuilder *(^)(UIColor *highlightBackgroundColor))highlightBackgroundColor{
    return ^SCButtonBuilder *(UIColor *highlightBackgroundColor){
        [self.button setBackgroundColor:highlightBackgroundColor];
        return self;
    };
}

- (SCButtonBuilder *(^)(UIColor *borderColor))borderColor{
    return ^SCButtonBuilder *(UIColor *borderColor){
        self.button.layer.borderColor = CFBridgingRetain(borderColor);
        return self;
    };
}

- (SCButtonBuilder *(^)(CGFloat borderWidth))borderWidth{
    return ^SCButtonBuilder *(CGFloat borderWidth){
        self.button.layer.borderWidth = borderWidth;
        return self;
    };
}

- (SCButtonBuilder *(^)(UIImage *image))image{
    return ^SCButtonBuilder *(UIImage *image){
        [self.button setBackgroundImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (SCButtonBuilder *(^)(UIImage *highlightImage))highlightImage{
    return ^SCButtonBuilder *(UIImage *highlightImage){
        [self.button setBackgroundImage:highlightImage forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(void))build{
    return ^UIButton *(void){
        return self.button;
    };
}

@end
