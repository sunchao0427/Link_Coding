//
//  ViewController.m
//  BuilderPatter
//
//  Created by 孙超 on 2018/9/30.
//  Copyright © 2018年 孙超. All rights reserved.
//
#import "UITextField+SCBuilder.h"
#import "UILabel+SCBuilder.h"
#import "UIButton+SCBuilder.h"
#import <Masonry.h>
#import "ViewController.h"

@interface ViewController ()

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
    
    
}
@end

