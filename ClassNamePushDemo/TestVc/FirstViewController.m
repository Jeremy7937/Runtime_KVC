//
//  FirstViewController.m
//  ClassNamePushDemo
//
//  Created by 郭凯 on 2017/10/17.
//  Copyright © 2017年 guokai. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *IDLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.IDLabel.text = [NSString stringWithFormat:@"ID: %@",self.Id];
    self.typeLabel.text = [NSString stringWithFormat:@"type: %@",self.type];
}


@end
