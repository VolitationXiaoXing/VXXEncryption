//
//  ViewController.m
//  加密算法iOSDemo
//
//  Created by junge on 16/11/16.
//  Copyright © 2016年 VolitationXiaoXing. All rights reserved.
//

#import "ViewController.h"
#import "VXXEncryption/VXXCryptionTools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
