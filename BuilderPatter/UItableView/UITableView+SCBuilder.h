//
//  UITableView+SCBuilder.h
//  BuilderPatter
//
//  Created by  孙 超 on 2018/10/13.
//  Copyright © 2018 孙超. All rights reserved.
//
#import "SCTableViewBuilder.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (SCBuilder)
+ (SCTableViewBuilder *(^)(void))builder;

@end

NS_ASSUME_NONNULL_END
