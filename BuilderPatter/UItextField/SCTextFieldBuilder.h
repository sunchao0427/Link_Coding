//
//  SCTextFieldBuilder.h
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface SCTextFieldBuilder : NSObject

- (SCTextFieldBuilder *(^)(NSString *text))text;
- (SCTextFieldBuilder *(^)(NSAttributedString *attributedText))attributedText;
- (SCTextFieldBuilder *(^)(UIColor *textColor))textColor;
- (SCTextFieldBuilder *(^)(UIFont *font))font;
- (SCTextFieldBuilder *(^)(NSTextAlignment textAlignment))textAlignment;
- (SCTextFieldBuilder *(^)(UITextBorderStyle borderStyle))borderStyle;
- (SCTextFieldBuilder *(^)(NSDictionary<NSString *, id> *defaultTextAttributes))defaultTextAttributes;
- (SCTextFieldBuilder *(^)(NSString *placeholder))placeholder;
- (SCTextFieldBuilder *(^)(NSAttributedString *attributedPlaceholder))attributedPlaceholder;
- (SCTextFieldBuilder *(^)(BOOL clearsOnBeginEditing))clearsOnBeginEditing;
- (SCTextFieldBuilder *(^)(BOOL adjustsFontSizeToFitWidth))adjustsFontSizeToFitWidth;
- (SCTextFieldBuilder *(^)(CGFloat minimumFontSize))minimumFontSize;
- (SCTextFieldBuilder *(^)(id<UITextFieldDelegate> delegate))delegate;
- (SCTextFieldBuilder *(^)(UIImage *background))background;
- (SCTextFieldBuilder *(^)(UIImage *disabledBackground))disabledBackground;
//- (SCTextFieldBuilder *(^)(BOOL editing))editing;
- (SCTextFieldBuilder *(^)(BOOL allowsEditingTextAttributes))allowsEditingTextAttributes;
- (SCTextFieldBuilder *(^)(NSDictionary<NSString *, id> *typingAttributes))typingAttributes;
- (SCTextFieldBuilder *(^)(UITextFieldViewMode clearButtonMode))clearButtonMode;
- (SCTextFieldBuilder *(^)(UIView *leftView))leftView;
- (SCTextFieldBuilder *(^)(UITextFieldViewMode leftViewMode))leftViewMode;
- (SCTextFieldBuilder *(^)(UIView *rightView))rightView;
- (SCTextFieldBuilder *(^)(UITextFieldViewMode rightViewMode))rightViewMode;


- (SCTextFieldBuilder *(^)(UIView *inputView))inptuView;
- (SCTextFieldBuilder *(^)(UIView *inputAccessoryView))inputAccessoryView;
- (SCTextFieldBuilder *(^)(BOOL clearsOnInsertion))clearsOnInsertion;

- (UITextField *(^)(void))build;

@end
