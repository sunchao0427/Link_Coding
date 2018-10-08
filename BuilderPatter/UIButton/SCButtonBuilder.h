//
//  SCButtonBuilder.h
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SCButtonBuilder : NSObject

- (SCButtonBuilder *(^)(NSString *))title;
- (SCButtonBuilder *(^)(UIColor *))titleColor;
- (SCButtonBuilder *(^)(UIColor *))highlilghtedTitleColor;
- (SCButtonBuilder *(^)(UIFont *))font;
- (SCButtonBuilder *(^)(CGFloat))fontSize;
- (SCButtonBuilder *(^)(CGFloat))cornerRadius;
- (SCButtonBuilder *(^)(UIColor *))backgroundColor;
- (SCButtonBuilder *(^)(UIColor *))highlightBackgroundColor;
- (SCButtonBuilder *(^)(UIColor *))borderColor;
- (SCButtonBuilder *(^)(CGFloat))borderWidth;
- (SCButtonBuilder *(^)(UIImage *))image;
- (SCButtonBuilder *(^)(UIImage *))highlightImage;
- (UIButton *(^)(void))build;
@end

