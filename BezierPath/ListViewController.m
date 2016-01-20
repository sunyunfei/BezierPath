//
//  ViewController.m
//  BezierPath
//
//  Created by 孙云 on 16/1/19.
//  Copyright © 2016年 haidai. All rights reserved.
//

#import "ListViewController.h"
#import "ShowViewController.h"
@interface ListViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //加载表
    [self loadTableView];
    //数据
    self.listArray = @[@"+ (instancetype)bezierPath",
                       @"+ (instancetype)bezierPathWithRect:(CGRect)rect",
                       @"+ (instancetype)bezierPathWithOvalInRect:(CGRect)rect",
                       @"+ (instancetype)bezierPathWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius",
                       @"+ (instancetype)bezierPathWithRoundedRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii",
                       @"+ (instancetype)bezierPathWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise",
                       @"- (void)addArcWithCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise",
                       @"- (void)addQuadCurveToPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint",
                       @"- (void)addCurveToPoint:(CGPoint)endPoint controlPoint1:(CGPoint)controlPoint1 controlPoint2:(CGPoint)controlPoint2",
                       @"综合使用"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**
 *  加载表的方法
 */
- (void)loadTableView
{
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    tableView.estimatedRowHeight = 300;
    tableView.rowHeight = UITableViewAutomaticDimension;
    [self.view addSubview:tableView];
    self.tableView = tableView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.listArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * const ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:0 reuseIdentifier:ID];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //显示一点颜色字体
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc]initWithString:self.listArray[indexPath.row]];
    if (string.length >1) {
        [string addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, string.length)];
    }
    [string addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:30] range:NSMakeRange(0, 1)];
    cell.textLabel.numberOfLines = 0;
    cell.textLabel.attributedText = string;
    cell.textLabel.highlightedTextColor = [UIColor purpleColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ShowViewController *VC = [story instantiateViewControllerWithIdentifier:@"show"];
    VC.indexPath = indexPath.row;
    [self.navigationController pushViewController:VC animated:YES];
}

@end
