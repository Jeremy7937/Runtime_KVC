//
//  FirstViewController.m
//  ClassNamePushDemo
//
//  Created by 郭凯 on 2017/10/17.
//  Copyright © 2017年 guokai. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSLog(@"________Id:%@ type:%@",self.Id,self.type);


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
