//
//  UIButton+SCBuilder.m
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//

#import "UIButton+SCBuilder.h"

@implementation UIButton (SCBuilder)

+ (SCButtonBuilder *(^)(void))builder{
    return ^SCButtonBuilder *(void){
        return [SCButtonBuilder new];
    };
}

@end
