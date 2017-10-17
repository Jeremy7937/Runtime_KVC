//
//  PushManager.h
//  ClassNamePushDemo
//
//  Created by 郭凯 on 2017/10/17.
//  Copyright © 2017年 guokai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PushManager : NSObject

+ (void)pushClassName:(NSString *)className params:(NSDictionary *)params navigationController:(UINavigationController *)nav;


@end
