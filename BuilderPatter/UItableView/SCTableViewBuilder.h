//
//  SCTableViewBuilder.h
//  BuilderPatter
//
//  Created by  孙 超 on 2018/10/13.
//  Copyright © 2018 孙超. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SCTableViewBuilder : NSObject


- (SCTableViewBuilder *(^)(id <UITableViewDelegate>delegate))delegate;
- (SCTableViewBuilder *(^)(id<UITableViewDataSource>dataSouce))dataSource;
- (SCTableViewBuilder *(^)(id <UITableViewDataSourcePrefetching> prefetchDataSource))prefetchDataSource;
- (SCTableViewBuilder *(^)(id <UITableViewDragDelegate>dragDelegate))dragdelegate;
- (SCTableViewBuilder *(^)(id <UITableViewDropDelegate>dropDelegate))dropDelegate;
- (SCTableViewBuilder *(^)(CGFloat rowHeight))rowHeight;
- (SCTableViewBuilder *(^)(CGFloat sectionHeaderHeight))sectionHeaderHeight;
- (SCTableViewBuilder *(^)(CGFloat sectionFooterHeight))sectionFooterHeight;
- (SCTableViewBuilder *(^)(CGFloat estimatedRowHeight))estimatedRowHeight;
- (SCTableViewBuilder *(^)(CGFloat estimatedSectionHeaderHeight))estimatedSectionHeaderHeight;
- (SCTableViewBuilder *(^)(CGFloat estimatedSectionFooterHeight))estimatedSectionFooterHeight;
- (SCTableViewBuilder *(^)(UIEdgeInsets separatorInset))separatorInset;
- (SCTableViewBuilder *(^)(UITableViewSeparatorInsetReference separatorInsetReference))separatorInsetReference;
- (SCTableViewBuilder *(^)(UIView *backgroundView))backgroundView;

- (SCTableViewBuilder *(^)(UIView *tableHeaderView))tableHeaderView;
- (SCTableViewBuilder *(^)(UIView *tableFooterView))tableFooterView;

- (UITableView *(^)(void))build;
@end

NS_ASSUME_NONNULL_END
