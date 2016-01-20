//
//  ViewController.h
//  BezierPath
//
//  Created by 孙云 on 16/1/19.
//  Copyright © 2016年 haidai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UIViewController
@property(nonatomic,weak)UITableView *tableView;
@property(nonatomic,retain)NSArray *listArray;
@end

