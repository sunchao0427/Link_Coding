//
//  UIButton+SCBuilder.h
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//
#import "SCButtonBuilder.h"
#import <UIKit/UIKit.h>

@interface UIButton (SCBuilder)


+ (SCButtonBuilder *(^)(void))builder;

@end
