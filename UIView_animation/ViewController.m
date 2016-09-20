//
//  ViewController.m
//  UIView_animation
//
//  Created by yaoln on 16/9/20.
//  Copyright © 2016年 zhangze. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

/**
 *Function ：旋转
 *Parameter：
 *Return   ：
 *From     ：
 *Version  ：
 */
- (IBAction)rotato:(id)sender {
    [UIView animateWithDuration:2.0f animations:^{
        self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, M_PI_2);
    }];
    
}



/**
 *Function ：放大
 *Parameter：
 *Return   ：
 *From     ：
 *Version  ：
 */
- (IBAction)zoomIn:(id)sender {
    [UIView animateWithDuration:2.0f animations:^{
        self.imageView.transform = CGAffineTransformScale(self.imageView.transform, 1.2f, 1.2f);
    }];
    
}

/**
 *Function ：缩小
 *Parameter：
 *Return   ：
 *From     ：
 *Version  ：
 */
- (IBAction)zoomOut:(id)sender {
    [UIView animateWithDuration:2.0f animations:^{
        
        self.imageView.transform = CGAffineTransformScale(self.imageView.transform, 0.8f, 0.8f);
    }];
}


/**
 *Function ：图片下移的动画
 *Parameter：
 *Return   ：
 *From     ：
 *Version  ：
 */
- (IBAction)moveDown:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.0f];
    CGRect fornerRect = self.imageView.frame;
    CGRect targetRect = CGRectMake(fornerRect.origin.x, fornerRect.origin.y + 100.0f, fornerRect.size.width, fornerRect.size.height);
    self.imageView.frame = targetRect;

    [UIView commitAnimations];
}

/**
 *Function ：图片上移的动画
 *Parameter：
 *Return   ：
 *From     ：
 *Version  ：
 */
- (IBAction)moveUp:(id)sender {
    /**
    [UIView animateWithDuration:2.0f animations:^{
        CGRect fornerRect = self.imageView.frame;
        CGRect targetRect = CGRectMake(fornerRect.origin.x, fornerRect.origin.y - 100.0f, fornerRect.size.width, fornerRect.size.height);
        self.imageView.frame = targetRect;
    }];
    */
    
    //平移
//    self.imageView.transform = CGAffineTransformMakeTranslation(0, 50); //只会移动一次
    
    [UIView animateWithDuration:2.0f animations:^{
        self.imageView.transform = CGAffineTransformTranslate(self.imageView.transform, 0, -50); //通过该函数进行叠加，就可以不断点击、
    }];
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
