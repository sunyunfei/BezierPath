//
//  ShowView.m
//  BezierPath
//
//  Created by 孙云 on 16/1/19.
//  Copyright © 2016年 haidai. All rights reserved.
//

#import "ShowView.h"
@interface ShowView()
{
    NSInteger showIndexPath;
}
@end
@implementation ShowView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
        self.layer.borderWidth = 2;
        self.layer.borderColor = [UIColor blackColor].CGColor;
        self.layer.shadowOffset = CGSizeMake(10, 8);
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowOpacity = 0.80;
    }
    return self;
}
/**
 *  接收数据
 *
 *  @param indexPath 选中的表的下表
 */
- (void)accIndexPath:(NSInteger)indexPath
{
    showIndexPath = indexPath;
}
- (void)drawRect:(CGRect)rect
{
    switch (showIndexPath) {
        case 0:
            [self loadBEOne];
            break;
        case 1:
            [self loadBETwo];
            break;
        case 2:
            [self loadBEThree];
            break;
        case 3:
            [self loadBEFour];
            break;
        case 4:
            [self loadBEFive];
            break;
        case 5:
            [self loadBESix];
            break;
        case 6:
            [self loadBESeven];
            break;
        case 7:
            [self loadBEEight];
            break;
        case 8:
            [self loadBENine];
            break;
        case 9:
            [self loadTen];
        default:
            break;
    }
    
}
/**
 *  + (instancetype)bezierPath
 */
- (void)loadBEOne
{
    //创建一个
    UIBezierPath *bePath = [UIBezierPath bezierPath];
    //开始位置
    [bePath moveToPoint:CGPointMake(100, 100)];
    //结束位置
    [bePath addLineToPoint:CGPointMake(200, 200)];
    [bePath addLineToPoint:CGPointMake(250, 150)];
    //设置线段端显示的样式
    bePath.lineCapStyle = kCGLineCapRound;
    //设置拐角的样式
    bePath.lineJoinStyle = kCGLineJoinRound;
    //设置边的颜色
    [[UIColor redColor] setStroke];
    //设置边的宽度
    bePath.lineWidth = 5.0;
    //绘画
    [bePath stroke];
    
    NSString *string = @"//创建一个\nUIBezierPath *bePath = [UIBezierPath bezierPath];\n//开始位置\n[bePath moveToPoint:CGPointMake(100, 100)];\n//结束位置\n[bePath addLineToPoint:CGPointMake(200, 200)];\n[bePath addLineToPoint:CGPointMake(250, 150)];\n//设置线段端显示的样式\nbePath.lineCapStyle = kCGLineCapRound;\n//设置拐角的样式\nbePath.lineJoinStyle = kCGLineJoinRound;\n//设置边的颜色[[UIColor redColor] setStroke];\n//设置边的宽度\nbePath.lineWidth = 5.0;\n//绘画\n[bePath stroke];";
    if (self.messageToVC) {
        self.messageToVC(string);
    }
}
/**
 *  + (instancetype)bezierPathWithRect:(CGRect)rect
 */
- (void)loadBETwo
{
    //创建一个矩形
    UIBezierPath *bePath = [UIBezierPath bezierPathWithRect:CGRectMake(100, 50, 100, 100)];
    //填充内部颜色
    [[UIColor blueColor] setFill];
    //边框颜色
    [[UIColor redColor] setStroke];
    
    [bePath stroke];
    //如果设置了内部填充颜色一定写上这句填充动作
    [bePath fill];
    
    
    NSString *string = @"//创建一个矩形\nUIBezierPath *bePath = [UIBezierPath bezierPathWithRect:CGRectMake(100, 50, 100, 100)];\n//填充内部颜色\n[[UIColor blueColor] setFill];\n//边框颜色\n[[UIColor redColor] setStroke];\n[bePath stroke];\n//如果设置了内部填充颜色一定写上这句填充动作\n[bePath fill];";
    if (self.messageToVC) {
        self.messageToVC(string);
    }
}
/**
 *  + (instancetype)bezierPathWithOvalInRect:(CGRect)rect
 */
- (void)loadBEThree
{
    //创建一个圆,当你输入的宽高是矩形的时候显示为椭圆
    UIBezierPath *bePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 50, 100, 100)];
    [[UIColor redColor] setFill];
    [bePath stroke];
    [bePath fill];
    NSString *string = @"//创建一个圆,当你输入的宽高是矩形的时候显示为椭圆\nUIBezierPath *bePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 50, 100, 100)];\n[[UIColor redColor] setFill];\n[bePath stroke];\n[bePath fill];";
    if (self.messageToVC) {
        self.messageToVC(string);
    }
}
/**
 *  + (instancetype)bezierPathWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius
 */
- (void)loadBEFour
{
    //创建一个自己定义四个角的弧度的
    UIBezierPath *bePath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 50, 100, 100) cornerRadius:10.0f];
    [bePath stroke];
    NSString *string = @"//创建一个自己定义四个角的弧度的\nUIBezierPath *bePath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 50, 100, 100) cornerRadius:10.0f];\n[bePath stroke];";
    if (self.messageToVC) {
        self.messageToVC(string);
    }
}
/**
 *  + (instancetype)bezierPathWithRoundedRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii
 */
- (void)loadBEFive
{
    //创建一个自己可以定义任意四个角的弧度
    UIBezierPath *bePath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 50, 100, 100) byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(20.0f, 0.0f)];//cornerRadii我自己测试了好久，CGSizeMake的高这个参数没有起到作用
    [bePath stroke];
    NSString *string = @"//创建一个自己可以定义任意四个角的弧度\nUIBezierPath *bePath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 50, 100, 100) byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(20.0f, 0.0f)];\n//cornerRadii我自己测试了好久，CGSizeMake的高这个参数没有起到作用\n[bePath stroke];";
    if (self.messageToVC) {
        self.messageToVC(string);
    }
}
/**
 *  + (instancetype)bezierPathWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise
 * 这个构造方法很有意思，center：是你的圆的圆心处 radius：是你的圆的半径  startAngle：开始的时候的位置  endAngle：结束的时候的位置  clockwise：如果是yes，就是逆时针画
 */
- (void)loadBESix
{
    UIBezierPath *bePath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 150) radius:50.0f startAngle:0 endAngle:M_PI clockwise:NO];
    [[UIColor redColor] setFill];
    [bePath stroke];
    [bePath fill];
    NSString *string = @"UIBezierPath *bePath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 150) radius:50.0f startAngle:0 endAngle:M_PI clockwise:NO];\n[[UIColor redColor] setFill];\n[bePath stroke];\n[bePath fill];";
    if (self.messageToVC) {
        self.messageToVC(string);
    }
}
/**圆弧
 *  - (void)addArcWithCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise
 */
- (void)loadBESeven
{
    UIBezierPath *bePath = [UIBezierPath bezierPath];
    [bePath addArcWithCenter:CGPointMake(100, 150) radius:50 startAngle:M_PI_2 endAngle:M_PI_4 clockwise:YES];
    [[UIColor redColor] setFill];
    [bePath stroke];
    [bePath fill];
    NSString *string = @"UIBezierPath *bePath = [UIBezierPath bezierPath];\n[bePath addArcWithCenter:CGPointMake(100, 150) radius:50 startAngle:M_PI_2 endAngle:M_PI_4 clockwise:YES];\n[[UIColor redColor] setFill];\n[bePath stroke];\n[bePath fill];";
    if (self.messageToVC) {
        self.messageToVC(string);
    }
}
/**
 *  贝塞尔曲线
     - (void)addQuadCurveToPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint
 endPoint:终点位置  controlPoint：控制点位置，通俗的说就是曲线弯角处
 */
- (void)loadBEEight
{
    UIBezierPath *bePath = [UIBezierPath bezierPath];
    [bePath moveToPoint:CGPointMake(100, 100)];
    [bePath addQuadCurveToPoint:CGPointMake(200,100) controlPoint:CGPointMake(100, 0)];
    [bePath stroke];
    NSString *string = @"UIBezierPath *bePath = [UIBezierPath bezierPath];[bePath moveToPoint:CGPointMake(100, 100)];\n[bePath addQuadCurveToPoint:CGPointMake(200,100) controlPoint:CGPointMake(100, 0)];\n[bePath stroke];";
    if (self.messageToVC) {
        self.messageToVC(string);
    }
}
/**
 *  - (void)addCurveToPoint:(CGPoint)endPoint controlPoint1:(CGPoint)controlPoint1 controlPoint2:(CGPoint)controlPoint2
 */
- (void)loadBENine
{
    UIBezierPath *bePath = [UIBezierPath bezierPath];
    [bePath moveToPoint:CGPointMake(50, 100)];
    [bePath addCurveToPoint:CGPointMake(250, 100) controlPoint1:CGPointMake(100, 200) controlPoint2:CGPointMake(200, 0)];
    [[UIColor redColor] setFill];
    [bePath stroke];
    [bePath fill];
    NSString *string = @"UIBezierPath *bePath = [UIBezierPath bezierPath];\n[bePath moveToPoint:CGPointMake(50, 100)];\n[bePath addCurveToPoint:CGPointMake(250, 100) controlPoint1:CGPointMake(100, 200) controlPoint2:CGPointMake(200, 0)];\n[[UIColor redColor] setFill];\n[bePath stroke];\n[bePath fill];";
    if (self.messageToVC) {
        self.messageToVC(string);
    }
}
/**
 *  综合使用
 */
- (void)loadTen
{
    //头部
    UIBezierPath *bePath =[UIBezierPath bezierPath];
    //画一个圆
    [bePath addArcWithCenter:CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2) radius:80 startAngle:0 endAngle:M_PI *2 clockwise:NO];
    bePath.lineWidth = 2.0;
    //让画的线闭合（只要有路径闭合的话）
    [bePath closePath];
    [bePath stroke];
    //眼睛
    UIBezierPath *bePath2 = [UIBezierPath bezierPath];
    [bePath2 addArcWithCenter:CGPointMake(self.frame.size.width / 2 - 25, self.frame.size.height / 2 - 10) radius:12 startAngle:0 endAngle:M_PI *2 clockwise:NO];
    [[UIColor blackColor] setFill];
    [bePath2 stroke];
    [bePath2 fill];
    
    UIBezierPath *bePath3 = [UIBezierPath bezierPath];
    [bePath3 addArcWithCenter:CGPointMake(self.frame.size.width / 2 +25, self.frame.size.height / 2 - 10) radius:12 startAngle:0 endAngle:M_PI*2 clockwise:NO];
    [[UIColor blackColor] setFill];
    [bePath3 stroke];
    [bePath3 fill];
    //嘴巴
    UIBezierPath *bePath4 = [UIBezierPath bezierPath];
    [bePath4 moveToPoint:CGPointMake(self.frame.size.width / 2 - 20, self.frame.size.height/2 +40)];
    [bePath4 addQuadCurveToPoint:CGPointMake(self.frame.size.width / 2 + 20, self.frame.size.height/2 +40) controlPoint:CGPointMake(self.frame.size.width / 2, self.frame.size.height/2 +60)];
    bePath4.lineWidth = 2;
    [[UIColor redColor] setStroke];
    [bePath4 stroke];
    //鼻子
    UIBezierPath *bePath5 = [UIBezierPath bezierPath];
    [bePath5 moveToPoint:CGPointMake(self.frame.size.width / 2 - 5, self.frame.size.height / 2 + 25)];
    [bePath5 addQuadCurveToPoint:CGPointMake(self.frame.size.width / 2 + 5, self.frame.size.height / 2 + 25) controlPoint:CGPointMake(self.frame.size.width /2, self.frame.size.height / 2 + 5)];
    [[UIColor purpleColor] setStroke];
    [bePath5 stroke];
    
    NSString *string = @"//头部\nUIBezierPath *bePath =[UIBezierPath bezierPath];\n//画一个圆\n[bePath addArcWithCenter:CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2) radius:80 startAngle:0 endAngle:M_PI *2 clockwise:NO];\nbePath.lineWidth = 2.0;\n//让画的线闭合（只要有路径闭合的话）\n[bePath closePath];\n[bePath stroke];\n//眼睛\nUIBezierPath *bePath2 = [UIBezierPath bezierPath];\n[bePath2 addArcWithCenter:CGPointMake(self.frame.size.width / 2 - 25, self.frame.size.height / 2 - 10) radius:12 startAngle:0 endAngle:M_PI *2 clockwise:NO];\n[[UIColor blackColor] setFill];\n[bePath2 stroke];\n[bePath2 fill];\nUIBezierPath *bePath3 = [UIBezierPath bezierPath];\n[bePath3 addArcWithCenter:CGPointMake(self.frame.size.width / 2 +25, self.frame.size.height / 2 - 10) radius:12 startAngle:0 endAngle:M_PI*2 clockwise:NO];\n[[UIColor blackColor] setFill];\n[bePath3 stroke];\n[bePath3 fill];\n//嘴巴\nUIBezierPath *bePath4 = [UIBezierPath bezierPath];\n[bePath4 moveToPoint:CGPointMake(self.frame.size.width / 2 - 20, self.frame.size.height/2 +40)];\n[bePath4 addQuadCurveToPoint:CGPointMake(self.frame.size.width / 2 + 20, self.frame.size.height/2 +40) controlPoint:CGPointMake(self.frame.size.width / 2, self.frame.size.height/2 +60)];\nbePath4.lineWidth = 2;\n[[UIColor redColor] setStroke];\n[bePath4 stroke];\n//鼻子\nUIBezierPath *bePath5 = [UIBezierPath bezierPath];\n[bePath5 moveToPoint:CGPointMake(self.frame.size.width / 2 - 5, self.frame.size.height / 2 + 25)];\n[bePath5 addQuadCurveToPoint:CGPointMake(self.frame.size.width / 2 + 5, self.frame.size.height / 2 + 25) controlPoint:CGPointMake(self.frame.size.width /2, self.frame.size.height / 2 + 5)];\n[[UIColor purpleColor] setStroke];\n[bePath5 stroke];";
    if (self.messageToVC) {
        self.messageToVC(string);
    }
}
@end
