//
//  UILabel+SCBuilder.m
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//

#import "UILabel+SCBuilder.h"

@implementation UILabel (SCBuilder)

+ (SCLabelBUilder *(^)(void))builder{
    return ^SCLabelBUilder *(void){
        return [SCLabelBUilder new];
    };
}

@end
