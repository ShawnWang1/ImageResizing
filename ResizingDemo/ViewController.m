//
//  ViewController.m
//  ResizingDemo
//
//  Created by shawn on 2020/4/10.
//  Copyright © 2020 shawn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self resiziconfigUI];
}

- (void)configUI
{
    UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"chat"]];
    imageV.frame = CGRectMake(100, 100, 300, 200);
    [self.view addSubview:imageV];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 400, 200, 200);
    [button setBackgroundImage:[UIImage imageNamed:@"buttongreen"] forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void)resiziconfigUI
{
    UIImage *image = [UIImage imageNamed:@"chat"];
    
    CGFloat imageW = image.size.width;
    CGFloat imageH = image.size.height;
    
    ///分别对图片的 top left bottom right 进行拉伸
    UIImage *resizImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(imageH/2, imageW/2,imageH/2, imageW/2)];
    
    UIImageView *imageV = [[UIImageView alloc] initWithImage:resizImage];
    imageV.frame = CGRectMake(100, 100, 300, 200);
    [self.view addSubview:imageV];
    
    UIImage *bimage = [UIImage imageNamed:@"buttongreen"];
    ///分别对图片的 水平 和 垂直 20像素进行拉伸
    UIImage *resizBImage = [bimage stretchableImageWithLeftCapWidth:20 topCapHeight:20];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 400, 200, 200);
    [button setBackgroundImage:resizBImage forState:UIControlStateNormal];
    [self.view addSubview:button];
}

@end
