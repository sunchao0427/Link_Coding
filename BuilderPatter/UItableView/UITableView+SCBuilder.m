//
//  UITableView+SCBuilder.m
//  BuilderPatter
//
//  Created by  孙 超 on 2018/10/13.
//  Copyright © 2018 孙超. All rights reserved.
//

#import "UITableView+SCBuilder.h"

@implementation UITableView (SCBuilder)

+ (SCTableViewBuilder *(^)(void))builder{
    return ^SCTableViewBuilder *(void){
        return [SCTableViewBuilder new];
    };
}

@end
