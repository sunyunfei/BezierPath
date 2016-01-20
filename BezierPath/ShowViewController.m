//
//  ShowViewController.m
//  BezierPath
//
//  Created by 孙云 on 16/1/19.
//  Copyright © 2016年 haidai. All rights reserved.
//

#import "ShowViewController.h"
#import "ShowView.h"
@interface ShowViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textField;
@end

@implementation ShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self loadShowView];
    
    //输入框不允许编辑
    self.textField.editable = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)loadShowView
{
    ShowView *showview = [[ShowView alloc]initWithFrame:CGRectMake(10, 64, self.view.frame.size.width - 20, self.view.frame.size.height / 2 - 74)];
    [showview accIndexPath:self.indexPath];
    showview.messageToVC = ^(NSString *string){
    
        self.textField.text = string;
    };
    [self.view addSubview:showview];
}

@end
