//
//  SCLabelBUilder.m
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//

#import "SCLabelBUilder.h"

@interface SCLabelBUilder ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation SCLabelBUilder

- (instancetype)init{
    self = [super init];
    if (self) {
        self.label = [[UILabel alloc]init];
    }
    return self;
}

- (SCLabelBUilder *(^)(NSString *))text{
    return ^SCLabelBUilder *(NSString *text){
        self.label.text = text;
        return self;
    };
}

- (SCLabelBUilder *(^)(UIFont *font))font{
    return ^SCLabelBUilder *(UIFont *font){
        self.label.font = font;
        return self;
    };
}

- (SCLabelBUilder *(^)(UIColor *textColor))textColor{
    return ^SCLabelBUilder *(UIColor *textColor){
        self.label.textColor = textColor;
        return self;
    };
}

- (SCLabelBUilder *(^)(UIColor *shadowColor))shadowColor{
    return ^SCLabelBUilder *(UIColor *shadowColor){
        self.label.shadowColor = shadowColor;
        return self;
    };
}

- (SCLabelBUilder *(^)(CGSize shadowOffset))shadowOffset{
    return ^SCLabelBUilder *(CGSize shadowOffset){
        self.label.shadowOffset = shadowOffset;
        return self;
    };
}

- (SCLabelBUilder *(^)(NSTextAlignment textAlignment))textAlignment{
    return ^SCLabelBUilder *(NSTextAlignment textAlignment){
        self.label.textAlignment = textAlignment;
        return self;
    };
}

- (SCLabelBUilder *(^)(NSLineBreakMode lineBreakMode))lineBreakMode{
    return ^SCLabelBUilder *(NSLineBreakMode lineBreakMode){
        self.label.lineBreakMode = lineBreakMode;
        return self;
    };
}

- (SCLabelBUilder *(^)(NSAttributedString *attributeText))attributeText{
    return ^SCLabelBUilder *(NSAttributedString *attributeText){
        self.label.attributedText = attributeText;
        return self;
    };
}

- (SCLabelBUilder *(^)(UIColor *highlightTextColor))highlightTextColor{
    return ^SCLabelBUilder *(UIColor *highlightTextColor){
        self.label.highlightedTextColor = highlightTextColor;
        return self;
    };
}

- (SCLabelBUilder *(^)(BOOL highlighted))highlight{
    return ^SCLabelBUilder *(BOOL highlighted){
        self.label.highlighted = highlighted;
        return self;
    };
}

- (SCLabelBUilder *(^)(BOOL userInteractionEnabled))userInteractionEnabled{
    return ^SCLabelBUilder *(BOOL userInteractionEnabled){
        self.label.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (SCLabelBUilder *(^)(BOOL enabled))enabled{
    return ^SCLabelBUilder *(BOOL enabled){
        self.label.enabled = enabled;
        return self;
    };
}

- (SCLabelBUilder *(^)(NSInteger numberofLines))numberOfLines{
    return ^SCLabelBUilder *(NSInteger numberOfLines){
        self.label.numberOfLines = numberOfLines;
        return self;
    };
}

- (SCLabelBUilder *(^)(BOOL adjustsFontSizeToFitWidth))adjustsFontSizeToFitWidth{
    return ^SCLabelBUilder *(BOOL adjustsFontSizeToWidth){
        self.label.adjustsFontSizeToFitWidth = adjustsFontSizeToWidth;
        return self;
    };
}

- (SCLabelBUilder *(^)(UIBaselineAdjustment baselineAdjustment))baselineAdjustment{
    return ^SCLabelBUilder *(UIBaselineAdjustment baselineAdjustment){
        self.label.baselineAdjustment = baselineAdjustment;
        return self;
    };
}

- (SCLabelBUilder *(^)(CGFloat minimumScaleFactor))minimumScaleFactor{
    return ^SCLabelBUilder *(CGFloat mininumScaleFactor){
        self.label.minimumScaleFactor = mininumScaleFactor;
        return self;
    };
}

- (SCLabelBUilder *(^)(BOOL allowsDefaultTighteningForTruncation))allowsDefaultTighteningForTruncation{
    return ^SCLabelBUilder *(BOOL allowsDefaultTighteningForTruncation){
        self.label.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation;
        return self;
    };
}


- (SCLabelBUilder *(^)(CGFloat preferredMaxLayoutWidth))preferredMaxLayoutWidth{
    return ^SCLabelBUilder *(CGFloat preferredMaxLayoutWidth){
        self.label.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}

- (SCLabelBUilder *(^)(CGFloat minimumFontSize))minimumFontSize{
    return ^SCLabelBUilder *(CGFloat miniumFontSize){
        self.label.minimumFontSize = miniumFontSize;
        return self;
    };
}

- (SCLabelBUilder *(^)(BOOL adjustsLetterSpacingToFitWidth))adjustsLetterSpacingToFitWidth{
    return ^SCLabelBUilder *(BOOL adjustsLetterSpacingToFitWidth){
        self.label.adjustsLetterSpacingToFitWidth = adjustsLetterSpacingToFitWidth;
        return self;
    };
}

- (UILabel *(^)(void))build{
    return ^UILabel *(void){
        return self.label;
    };
}

@end
