//
//  main.m
//  加密算法Demo
//
//  Created by junge on 16/11/16.
//  Copyright © 2016年 VolitationXiaoXing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VXXCryptionTools.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString* content = @"1234abcd你好世界";
        NSString* key = @"123456";
        NSData* iv = [NSData dataWithBytes:(__bridge const void * _Nullable)(@[@'a',@'2',@'3',@'4',@'3',@'3',@'4',@'4']) length:8];
        
        //DES加密
        NSString* encryContent = [VXXCryptionTools DESEncryptString:content keyString:key iv:iv];
        NSString* dencryContent = [VXXCryptionTools DESDecryptString:encryContent keyString:key iv:iv];
        
        NSLog(@"==========================");
        NSLog(@"明文:%@",content);
        NSLog(@"==========================");
        NSLog(@"DES加密数据:%@",encryContent);
        NSLog(@"==========================");
        NSLog(@"DES解密数据:%@",dencryContent);
        NSLog(@"==========================");
        
        
    
    }
    return 0;
}
