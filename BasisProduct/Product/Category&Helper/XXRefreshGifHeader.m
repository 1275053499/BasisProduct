//
//  XXRefreshGifHeader.m
//  Product
//
//  Created by Sen wang on 2017/8/24.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "XXRefreshGifHeader.h"

@implementation XXRefreshGifHeader

#pragma mark - 重写父类的方法
- (void)prepare {
    [super prepare];
    // 设置普通状态的动画图片
    NSMutableArray *idleImages = [NSMutableArray array];
    for (NSUInteger i = 1; i <= 60; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"dropdown_anim__000%zd", i]];
        [idleImages addObject:image];
    }
    [self setImages:idleImages forState:MJRefreshStateIdle];
    // 设置即将刷新状态的动画图片（一松开就会刷新的状态）
    NSMutableArray *refreshingImages = [NSMutableArray array];
    for (NSUInteger i = 1; i <= 3; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"dropdown_loading_0%zd", i]];
        [refreshingImages addObject:image];
    }
    [self setImages:refreshingImages forState:MJRefreshStatePulling];
    // 设置正在刷新状态的动画图片
    [self setImages:refreshingImages forState:MJRefreshStateRefreshing];
    //隐藏时间
    self.lastUpdatedTimeLabel.hidden = NO;
    //隐藏状态
    self.stateLabel.hidden = NO;
}

@end
