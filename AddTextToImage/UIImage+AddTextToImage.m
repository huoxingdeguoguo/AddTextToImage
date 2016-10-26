//
//  UIImage+AddTextToImage.m
//  AddTextToImage
//
//  Created by DLL on 16/10/26.
//  Copyright © 2016年 DLL. All rights reserved.
//

#import "UIImage+AddTextToImage.h"

@implementation UIImage (AddTextToImage)
+ (UIImage *)drawText:(NSString *)text inImage:(UIImage *)image atPoint:(CGPoint)point textAttribute:(NSDictionary *)attibute{
    UIGraphicsBeginImageContext(image.size);
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    CGRect rect = CGRectMake(point.x, point.y, image.size.width, image.size.height);
    [[UIColor whiteColor] set];
    [text drawInRect:rect withAttributes:attibute];
    UIImage *retureImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return retureImage;
}
@end
