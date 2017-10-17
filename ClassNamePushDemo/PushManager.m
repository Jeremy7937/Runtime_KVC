//
//  PushManager.m
//  ClassNamePushDemo
//
//  Created by 郭凯 on 2017/10/17.
//  Copyright © 2017年 guokai. All rights reserved.
//

#import "PushManager.h"
#import <objc/runtime.h>

@implementation PushManager

+ (void)pushClassName:(NSString *)className params:(NSDictionary *)params navigationController:(UINavigationController *)nav {

    const char *newClassName = [className cStringUsingEncoding:NSASCIIStringEncoding];
    Class newClass = objc_getClass(newClassName);

    if (!newClass) {
        //创建一个类
        Class superClass = [NSObject class];
        newClass = objc_allocateClassPair(superClass, newClassName, 0);
        //注册这个类
        objc_registerClassPair(newClass);
    }
    //创建对象
    id instance = [[newClass alloc] init];
    
    //对该对象赋值属性
    if (params) {
        [params enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL * stop) {
           
            //检测这个对象是否存在该属性
            if ([self checkIsExistPropertyWithInstance:instance verifyPropertyName:key]) {
//                [instance setObject:obj forKey:key];
                [instance setValue:obj forKey:key];
            }
        }];
        //跳转控制器
        [nav pushViewController:instance animated:YES];
    }
}

+ (BOOL)checkIsExistPropertyWithInstance:(id)instance verifyPropertyName:(NSString *)verifyPropertyName {
    
    unsigned int outCount, i;
    
    // 获取对象里的属性列表
    objc_property_t * properties = class_copyPropertyList([instance
                                                           class], &outCount);
    
    for (i = 0; i < outCount; i++) {
        objc_property_t property =properties[i];
        //  属性名转成字符串
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        // 判断该属性是否存在
        if ([propertyName isEqualToString:verifyPropertyName]) {
            free(properties);
            return YES;
        }
    }
    free(properties);
    
    return NO;
}

@end
