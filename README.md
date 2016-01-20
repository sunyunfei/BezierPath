# BezierPath
***
## what?

在iOS中绘制矢量图或者路径的时候通常会用到 UIBezierPath ，它在 UIKit 中，是CoreGraphics对path的封装。使用 UIBezierPath ，可以绘制直线、椭圆、多边形和贝塞尔曲线......。
***
## why?

能够基本上实现CGPathRef的功能，它是OC语言的，相对于c语言的Core Graphics来说更为平易近人。它能够使用ARC，如果我们直接使用CGPathRef的话，还要自己负责在合适的时候释放。
***
## how?
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
    
 更多复杂的绘制请参考Demo.
 ***
## run
![运行界面](file:////Users/syf/Desktop/1.png)
![运行界面](file:////Users/syf/Desktop/2.png)
![运行界面](file:////Users/syf/Desktop/3.png)
![运行界面](file:////Users/syf/Desktop/4.png)
