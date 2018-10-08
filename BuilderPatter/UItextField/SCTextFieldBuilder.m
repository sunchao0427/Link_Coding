//
//  SCTextFieldBuilder.m
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//

#import "SCTextFieldBuilder.h"

@interface SCTextFieldBuilder ()
@property (nonatomic, strong) UITextField *textFiled;

@end

@implementation SCTextFieldBuilder

- (instancetype)init{
    self = [super init];
    if (self) {
        self.textFiled = [[UITextField alloc]init];
    }
    return self;
}

- (SCTextFieldBuilder *(^)(NSString *text))text{
    return ^SCTextFieldBuilder *(NSString *text){
        self.textFiled.text = text;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(NSAttributedString *attributedText))attributedText{
    return ^SCTextFieldBuilder *(NSAttributedString *attributedText){
        self.textFiled.attributedText = attributedText;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UIColor *textColor))textColor{
    return ^SCTextFieldBuilder *(UIColor *textColor){
        self.textFiled.textColor = textColor;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UIFont *font))font{
    return ^SCTextFieldBuilder *(UIFont *font){
        self.textFiled.font = font;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(NSTextAlignment textAlignment))textAlignment{
    return ^SCTextFieldBuilder *(NSTextAlignment textAlignment){
        self.textFiled.textAlignment = textAlignment;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UITextBorderStyle borderStyle))borderStyle{
    return ^SCTextFieldBuilder *(UITextBorderStyle borderStyle){
        self.textFiled.borderStyle = borderStyle;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(NSDictionary<NSString *, id> *defaultTextAttributes))defaultTextAttributes{
    return ^SCTextFieldBuilder *(NSDictionary *defaultTextAttributes){
        self.textFiled.defaultTextAttributes = defaultTextAttributes;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(NSString *placeholder))placeholder{
    return ^SCTextFieldBuilder *(NSString *placeholder){
        self.textFiled.placeholder = placeholder;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(NSAttributedString *attributedPlaceholder))attributedPlaceholder{
    return ^SCTextFieldBuilder *(NSAttributedString *attributedPlaceholder){
        self.textFiled.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(BOOL clearsOnBeginEditing))clearsOnBeginEditing{
    return ^SCTextFieldBuilder *(BOOL clearsOnBeginEditing){
        self.textFiled.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(BOOL adjustsFontSizeToFitWidth))adjustsFontSizeToFitWidth{
    return ^SCTextFieldBuilder *(BOOL adjustsFontSizeToFitWidth){
        self.textFiled.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(CGFloat minimumFontSize))minimumFontSize{
    return ^SCTextFieldBuilder *(CGFloat minimumFontSize){
        self.textFiled.minimumFontSize = minimumFontSize;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(id<UITextFieldDelegate> delegate))delegate{
    return ^SCTextFieldBuilder *(id delegate){
        self.textFiled.delegate = delegate;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UIImage *background))background{
    return ^SCTextFieldBuilder *(UIImage *background){
        self.textFiled.background = background;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UIImage *disabledBackground))disabledBackground{
    return ^SCTextFieldBuilder *(UIImage *disabledBackground){
        self.textFiled.disabledBackground = disabledBackground;
        return self;
    };
}
//- (SCTextFieldBuilder *(^)(BOOL editing))editing{
//    return ^SCTextFieldBuilder *(BOOL editing){
//        self.textFiled.editing = editing;
//        return self;
//    };
//}
- (SCTextFieldBuilder *(^)(BOOL allowsEditingTextAttributes))allowsEditingTextAttributes{
    return ^SCTextFieldBuilder *(BOOL allowsEditingTextAttributes){
        self.textFiled.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(NSDictionary<NSString *, id> *typingAttributes))typingAttributes{
    return ^SCTextFieldBuilder *(NSDictionary *typingAttributes){
        self.textFiled.typingAttributes = typingAttributes;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UITextFieldViewMode clearButtonMode))clearButtonMode{
    return ^SCTextFieldBuilder *(UITextFieldViewMode clearButtonMode){
        self.textFiled.clearButtonMode = clearButtonMode;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UIView *leftView))leftView{
    return ^SCTextFieldBuilder *(UIView *leftView){
        self.textFiled.leftView = leftView;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UITextFieldViewMode leftViewMode))leftViewMode{
    return ^SCTextFieldBuilder *(UITextFieldViewMode leftViewMode){
        self.textFiled.leftViewMode = leftViewMode;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UIView *rightView))rightView{
    return ^SCTextFieldBuilder *(UIView *rightView){
        self.textFiled.rightView = rightView;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UITextFieldViewMode rightViewMode))rightViewMode{
    return ^SCTextFieldBuilder *(UITextFieldViewMode rightViewMode){
        self.textFiled.rightViewMode = rightViewMode;
        return self;
    };
}


- (SCTextFieldBuilder *(^)(UIView *inputView))inptuView{
    return ^SCTextFieldBuilder *(UIView *inputView){
        self.textFiled.inputView = inputView;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(UIView *inputAccessoryView))inputAccessoryView{
    return ^SCTextFieldBuilder *(UIView *inputAccessoryView){
        self.textFiled.inputAccessoryView = inputAccessoryView;
        return self;
    };
}
- (SCTextFieldBuilder *(^)(BOOL clearsOnInsertion))clearsOnInsertion{
    return ^SCTextFieldBuilder *(BOOL clearsOnInsertion){
        self.textFiled.clearsOnInsertion = clearsOnInsertion;
        return self;
    };
}

- (UITextField *(^)(void))build{
    return ^UITextField *(void){
        return self.textFiled;
    };
}

@end
