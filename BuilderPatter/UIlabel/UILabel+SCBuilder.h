//
//  UILabel+SCBuilder.h
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//
#import "SCLabelBUilder.h"
#import <UIKit/UIKit.h>

@interface UILabel (SCBuilder)

+ (SCLabelBUilder *(^)(void))builder;

@end
