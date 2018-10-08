//
//  SCLabelBUilder.h
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface SCLabelBUilder : NSObject

- (SCLabelBUilder *(^)(NSString *))text;
- (SCLabelBUilder *(^)(UIFont *font))font;
- (SCLabelBUilder *(^)(UIColor *textColor))textColor;
- (SCLabelBUilder *(^)(UIColor *shadowColor))shadowColor;
- (SCLabelBUilder *(^)(CGSize shadowOffset))shadowOffset;
- (SCLabelBUilder *(^)(NSTextAlignment textAlignment))textAlignment;
- (SCLabelBUilder *(^)(NSLineBreakMode lineBreakMode))lineBreakMode;
- (SCLabelBUilder *(^)(NSAttributedString *attributeText))attributeText;
- (SCLabelBUilder *(^)(UIColor *highlightTextColor))highlightTextColor;
- (SCLabelBUilder *(^)(BOOL highlighted))highlight;
- (SCLabelBUilder *(^)(BOOL userInteractionEnabled))userInteractionEnabled;
- (SCLabelBUilder *(^)(BOOL enabled))enabled;
- (SCLabelBUilder *(^)(NSInteger numberofLines))numberOfLines;
- (SCLabelBUilder *(^)(BOOL adjustsFontSizeToFitWidth))adjustsFontSizeToFitWidth;
- (SCLabelBUilder *(^)(UIBaselineAdjustment baselineAdjustment))baselineAdjustment;
- (SCLabelBUilder *(^)(CGFloat minimumScaleFactor))minimumScaleFactor;
- (SCLabelBUilder *(^)(BOOL allowsDefaultTighteningForTruncation))allowsDefaultTighteningForTruncation;


- (SCLabelBUilder *(^)(CGFloat preferredMaxLayoutWidth))preferredMaxLayoutWidth;
- (SCLabelBUilder *(^)(CGFloat minimumFontSize))minimumFontSize; NS_DEPRECATED_IOS(2_0, 6_0) __TVOS_PROHIBITED; // deprecated - use minimumScaleFactor. default is 0.0
- (SCLabelBUilder *(^)(BOOL adjustsLetterSpacingToFitWidth))adjustsLetterSpacingToFitWidth; NS_DEPRECATED_IOS(6_0,7_0) __TVOS_PROHIBITED;

- (UILabel *(^)(void))build;

@end
