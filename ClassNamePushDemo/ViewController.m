//
//  ViewController.m
//  ClassNamePushDemo
//
//  Created by 郭凯 on 2017/10/17.
//  Copyright © 2017年 guokai. All rights reserved.
//

#import "ViewController.h"
#import "PushManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)push:(id)sender {
    
    NSDictionary *params = @{@"Id":@"123456",@"type":@"777"};
    [PushManager pushClassName:@"FirstViewController" params:params navigationController:self.navigationController];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
