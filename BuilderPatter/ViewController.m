//
//  ViewController.m
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//
#import "UItableView+SCBuilder.h"
#import "UITextField+SCBuilder.h"
#import "UILabel+SCBuilder.h"
#import "UIButton+SCBuilder.h"
#import <Masonry.h>
#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = UIButton.builder().title(@"builder Test").titleColor([UIColor blackColor]).highlilghtedTitleColor([UIColor orangeColor]).backgroundColor([UIColor grayColor]).borderWidth(10).cornerRadius(8).build();
    
    [self.view addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
        make.height.equalTo(@(44));
        make.top.equalTo(self.view).offset(60);
    }];
    
    
    UILabel *label = UILabel.builder().text(@"builderLabel").textColor([UIColor blackColor]).textAlignment(NSTextAlignmentRight).highlightTextColor([UIColor redColor]).highlight(YES).build();
    
    [self.view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
        make.height.equalTo(@(44));
        make.top.equalTo(button.mas_bottom).offset(10);
    }];
    
    UITextField *textField = UITextField.builder().text(@"TExtField Builder").textAlignment(NSTextAlignmentLeft).textColor([UIColor blueColor]).borderStyle(UITextBorderStyleRoundedRect).placeholder(@"哈哈哈哈哈哈哈").build();
    
    [self.view addSubview:textField];
    [textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
        make.height.equalTo(@(44));
        make.top.equalTo(label.mas_bottom).offset(10);
    }];
    
//    __weak typeof(self) WeakSelf = self;
//    __strong typeof(WeakSelf) StrongSelf = WeakSelf;
    
    UITableView *tableView = UITableView.builder().estimatedRowHeight(44).delegate(self).dataSource(self).build();
    
    [self.view addSubview:tableView];
    
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(textField.mas_bottom).offset(0);
        make.left.right.bottom.equalTo(self.view);
    }];
    
    
    
}

#pragma mark - UItableViewDataSource
#pragma mark -
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
     UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"hello"];
    }
    
    cell.textLabel.text = @"888888";
    
    return cell;
}



@end

