//
//  UIImage+ImageRoundedCorner.m
//  CornerRadius
//
//  Created by 张星宇 on 16/3/3.
//  Copyright © 2016年 zxy. All rights reserved.
//

#import "UIImage+ImageRoundedCorner.h"

@implementation UIImage (ImageRoundedCorner)

- (UIImage*)imageAddCornerWithRadius:(CGFloat)radius andSize:(CGSize)size{
    /**  矩形框  */
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    /**  开启图形上下文  */
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    /**  获取当前上下文  */
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    /**  创建UIBezierPath路径  画圆 */
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    /**  把路径添加到图形上下文  */
    CGContextAddPath(ctx,path.CGPath);
    /**  裁切  */
    CGContextClip(ctx);
    /**  画起来  */
    [self drawInRect:rect];
    /**  渲染  */
    CGContextDrawPath(ctx, kCGPathFillStroke);
    /**  从上下文中 获取图片  */
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    /**  打完收工  关闭图形上下文  */
    UIGraphicsEndImageContext();

    return newImage;
}

@end
