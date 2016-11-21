//
//  ViewController.m
//  加密算法iOSDemo
//
//  Created by VolitationXiaoXing on 16/11/16.
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
    NSString* key = @"1234567123456789";
    NSData* iv = [NSData dataWithBytes:(__bridge const void * _Nullable)(@[@'a',@'2',@'3',@'4',@'3',@'3',@'4',@'4']) length:8];
    //DES加密解密并计算时间
    
    NSString* encryContent = [VXXCryptionTools DESEncryptString:content keyString:key iv:iv];
    NSLog(@"==========================");
    NSLog(@"明文:%@",content);
    NSLog(@"==========================");
    NSLog(@"DES加密数据:%@",encryContent);
    NSLog(@"==========================");
    NSString* dencryContent = [VXXCryptionTools DESDecryptString:encryContent keyString:key iv:iv];

    NSLog(@"DES解密数据:%@",dencryContent);
    NSLog(@"==========================");
    
    
    //AES加密解密
    NSString* encryAESContent = [VXXCryptionTools AESEncryptString:content keyString:key iv:iv];
    NSLog(@"AES加密数据:%@",encryAESContent);
    NSLog(@"==========================");
    NSString* dencryAESContent = [VXXCryptionTools AESDecryptString:encryAESContent keyString:key iv:iv];
    NSLog(@"AES解密数据:%@",dencryAESContent);
    NSLog(@"==========================");
    
    //AES加密解密 128
    NSString* encryAES128Content = [VXXCryptionTools encryptAES:content key:key];
    NSLog(@"AES-128加密数据:%@",encryAES128Content);
    NSLog(@"==========================");
    NSString* decryAES128Content = [VXXCryptionTools decryptAES:encryAES128Content key:key];
    NSLog(@"AES-128解密数据:%@",decryAES128Content);
    NSLog(@"==========================");

    
    
    //RSA加密解密

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
