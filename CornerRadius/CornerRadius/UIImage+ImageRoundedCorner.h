//
//  UIImage+ImageRoundedCorner.h
//  CornerRadius
//
//  Created by 张星宇 on 16/3/3.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageRoundedCorner)
/*!
 *  @author  WGB  , 16-04-17 20:04:22
 *
 *  @brief 给图片加个圆角
 *
 *  @param radius 弧度
 *  @param size   多大尺寸
 *
 *  @return 返回一个切好圆角的图片
 */
- (UIImage*)imageAddCornerWithRadius:(CGFloat)radius andSize:(CGSize)size;

@end
