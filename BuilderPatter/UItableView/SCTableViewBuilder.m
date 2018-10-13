//
//  SCTableViewBuilder.m
//  BuilderPatter
//
//  Created by  孙 超 on 2018/10/13.
//  Copyright © 2018 孙超. All rights reserved.
//

#import "SCTableViewBuilder.h"

@interface SCTableViewBuilder()
@property (nonatomic , strong) UITableView *tableView;

@end

@implementation SCTableViewBuilder

- (instancetype)init{
    if (self = [super init]) {
        self.tableView = [[UITableView alloc]init];
    }
    return self;
}


- (SCTableViewBuilder *(^)(id <UITableViewDelegate>delegate))delegate{
    return ^SCTableViewBuilder *(id <UITableViewDelegate>delegate){
        self.tableView.delegate = delegate;
        return self;
    };
    
}

- (SCTableViewBuilder *(^)(id<UITableViewDataSource>dataSouce))dataSource{
    return ^SCTableViewBuilder *(id <UITableViewDataSource>dataSource){
        self.tableView.dataSource = dataSource;
        return self;
    };
}

- (SCTableViewBuilder *(^)(id <UITableViewDataSourcePrefetching> prefetchDataSource))prefetchDataSource{
    return ^SCTableViewBuilder *(id <UITableViewDataSourcePrefetching> prefetchDataSource){
        self.tableView.prefetchDataSource = prefetchDataSource;
        return self;
    };
}

- (SCTableViewBuilder *(^)(id <UITableViewDragDelegate>dragDelegate))dragdelegate{
    return ^SCTableViewBuilder *(id <UITableViewDragDelegate>dragDelegate){
        self.tableView.dragDelegate = dragDelegate;
        return self;
    };
}

- (SCTableViewBuilder *(^)(id <UITableViewDropDelegate>dropDelegate))dropDelegate{
    return ^SCTableViewBuilder *(id <UITableViewDropDelegate> dropDelegate){
        self.tableView.dropDelegate = dropDelegate;
        return self;
    };
}

- (SCTableViewBuilder *(^)(CGFloat rowHeight))rowHeight{
    return ^SCTableViewBuilder *(CGFloat rowHeight){
        self.tableView.rowHeight = rowHeight;
        return self;
    };
}

- (SCTableViewBuilder *(^)(CGFloat sectionHeaderHeight))sectionHeaderHeight{
    return ^SCTableViewBuilder *(CGFloat sectionHeaderHeight){
        self.tableView.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}

- (SCTableViewBuilder *(^)(CGFloat sectionFooterHeight))sectionFooterHeight{
    return ^SCTableViewBuilder *(CGFloat sectionFooterHeight){
        self.tableView.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}

- (SCTableViewBuilder *(^)(CGFloat estimatedRowHeight))estimatedRowHeight{
    return ^SCTableViewBuilder *(CGFloat estimatedRowHeight){
        self.tableView.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}

- (SCTableViewBuilder *(^)(CGFloat estimatedSectionHeaderHeight))estimatedSectionHeaderHeight{
    return ^SCTableViewBuilder *(CGFloat estimatedSectionHeaderHeight){
        self.tableView.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}

- (SCTableViewBuilder *(^)(CGFloat estimatedSectionFooterHeight))estimatedSectionFooterHeight{
    return ^SCTableViewBuilder *(CGFloat estimatedSectionFooterHeight){
        self.tableView.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return self;
    };
}

- (SCTableViewBuilder *(^)(UIEdgeInsets separatorInset))separatorInset{
    return ^SCTableViewBuilder *(UIEdgeInsets separatorInset){
        self.tableView.separatorInset = separatorInset;
        return self;
    };
}

- (SCTableViewBuilder *(^)(UITableViewSeparatorInsetReference separatorInsetReference))separatorInsetReference{
    return ^SCTableViewBuilder *(UITableViewSeparatorInsetReference seperatorInsetReference){
        self.tableView.separatorInsetReference = seperatorInsetReference;
        return self;
    };
}

- (SCTableViewBuilder *(^)(UIView *backgroundView))backgroundView{
    return ^SCTableViewBuilder *(UIView *backgroundView){
        self.tableView.backgroundView = backgroundView;
        return self;
    };
}

- (SCTableViewBuilder *(^)(UIView *tableHeaderView))tableHeaderView{
    return ^SCTableViewBuilder *(UIView *tableHeaderView){
        self.tableView.tableHeaderView = tableHeaderView;
        return self;
    };
}

- (SCTableViewBuilder *(^)(UIView *tableFooterView))tableFooterView{
    return ^SCTableViewBuilder *(UIView *tableFooterView){
        self.tableView.tableFooterView = tableFooterView;
        return self;
    };
}


- (UITableView *(^)(void))build{
    return ^UITableView *(void){
        return self.tableView;
    };
}

@end
