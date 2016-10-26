//
//  UIImage+AddTextToImage.h
//  AddTextToImage
//
//  Created by DLL on 16/10/26.
//  Copyright © 2016年 DLL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (AddTextToImage)
/**
 *  为图片添加文字并返回新的图片
 *
 *  @param text     添加的文字
 *  @param image    原始图片
 *  @param point    添加文字的位子
 *  @param attibute 文字的属性
 *
 *  @return 返回新的图片
 */
+ (UIImage *)drawText:(NSString *)text
              inImage:(UIImage *)image
              atPoint:(CGPoint)point
        textAttribute:(NSDictionary *)attibute;
@end
