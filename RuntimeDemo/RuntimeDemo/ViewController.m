//
//  ViewController.m
//  RuntimeDemo
//
//  Created by MAC mini on 16/6/16.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIControl *control = [[UIControl alloc]initWithFrame:CGRectMake(0, 0, 255, 255)];
    [control setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:control];
    control.zwy_touchUpBlock = ^(id sender){
        NSLog(@"touchUpBlock");
    };
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
