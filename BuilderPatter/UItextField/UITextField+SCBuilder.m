//
//  UITextField+SCBuilder.m
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//

#import "UITextField+SCBuilder.h"

@implementation UITextField (SCBuilder)

+ (SCTextFieldBuilder *(^)(void))builder{
    return ^SCTextFieldBuilder *(void){
        return [SCTextFieldBuilder new];
    };
}

@end
