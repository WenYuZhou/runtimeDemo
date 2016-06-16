//
//  UIControl+ZWYBlock.h
//  HelloGithub
//
//  Created by MAC mini on 16/6/15.
//  Copyright © 2016年 Mac. All rights reserved.
//

/**
 *  扩展UIControl添加Block版本的TouchUpInside事件
 *
*/
#import <UIKit/UIKit.h>
typedef void (^ZWYTouchUpBlock)(id sender);
@interface UIControl (ZWYBlock)
@property (nonatomic, copy) ZWYTouchUpBlock zwy_touchUpBlock;

@end
