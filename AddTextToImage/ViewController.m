//
//  ViewController.m
//  AddTextToImage
//
//  Created by DLL on 16/10/26.
//  Copyright © 2016年 DLL. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+AddTextToImage.h"
#define M_S self.view.frame.size
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImage *image = [UIImage imageNamed:@"image"];
    imageView.image = image;
    imageView.contentMode = UIViewContentModeRedraw;
    [self.view addSubview:imageView];
    
    UIImage *newImage = [UIImage drawText:@"火星的蝈蝈" inImage:image atPoint:CGPointMake(M_S.width, M_S.height/2) textAttribute:@{NSFontAttributeName:[UIFont systemFontOfSize:15],NSForegroundColorAttributeName:[UIColor redColor]}];
    imageView.image = newImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
