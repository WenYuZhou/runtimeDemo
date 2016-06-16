//
//  UIControl+ZWYBlock.m
//  HelloGithub
//
//  Created by MAC mini on 16/6/15.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "UIControl+ZWYBlock.h"
#import <objc/runtime.h>
static const void *sZWYUIControlTouchUpEventBlockKey = "sZWYUIControlTouchUpEventBlockKey";
@implementation UIControl (ZWYBlock)
- (void)setZwy_touchUpBlock:(ZWYTouchUpBlock)zwy_touchUpBlock
{
    objc_setAssociatedObject(self, sZWYUIControlTouchUpEventBlockKey, zwy_touchUpBlock, OBJC_ASSOCIATION_COPY);
    [self removeTarget:self action:@selector(zwyOnTouchUp:) forControlEvents:UIControlEventTouchUpInside];
    
    if (zwy_touchUpBlock) {
        [self addTarget:self action:@selector(zwyOnTouchUp:) forControlEvents:UIControlEventTouchUpInside];
    }
}


- (ZWYTouchUpBlock)zwy_touchUpBlock
{
    return objc_getAssociatedObject(self, sZWYUIControlTouchUpEventBlockKey);
}


- (void)zwyOnTouchUp:(UIButton*)sender
{
    ZWYTouchUpBlock touchup = self.zwy_touchUpBlock;
    
    if (touchup) {
        touchup(sender);
    }
    
    
}

@end
