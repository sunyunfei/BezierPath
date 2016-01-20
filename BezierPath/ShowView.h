//
//  ShowView.h
//  BezierPath
//
//  Created by 孙云 on 16/1/19.
//  Copyright © 2016年 haidai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowView : UIView
- (void)accIndexPath:(NSInteger)indexPath;
@property(nonatomic,copy)void(^messageToVC)(NSString *string);
@end
