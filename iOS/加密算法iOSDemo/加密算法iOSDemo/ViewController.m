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
  
    NSString* content = @"12水电费启动4%%";
    NSString* key = @"gPB5VYsS20L9ipGo";
    NSData* iv = [NSData dataWithBytes:(__bridge const void * _Nullable)(@[@'1',@'2',@'3',@'4',@'5',@'6',@'7',@'8',@'9',@'0',@'1',@'2',@'3',@'4',@'5',@'6']) length:16];
    //DES加密解密并计算时间
    
    NSString* iv1 = @"1234567890123456";
    
    NSData* data1 = [iv1 dataUsingEncoding:NSUTF8StringEncoding];
    
    
//    NSData* data = [NSData dataWithBytes:[iv1 ] length:<#(NSUInteger)#>];
    
    NSString* encryContent = [VXXCryptionTools DESEncryptString:content keyString:key iv:data1];
    NSLog(@"==========================");
    NSLog(@"明文:%@",content);
    NSLog(@"==========================");
    NSLog(@"DES加密数据:%@",encryContent);
    NSLog(@"==========================");
    NSString* dencryContent = [VXXCryptionTools DESDecryptString:encryContent keyString:key iv:data1];

    NSLog(@"DES解密数据:%@",dencryContent);
    NSLog(@"==========================");
    
    
    //AES加密解密
    NSString* encryAESContent = [VXXCryptionTools AESEncryptString:content keyString:key iv:data1];
    NSLog(@"AES加密数据:%@",encryAESContent);
    NSLog(@"==========================");
    NSString* dencryAESContent = [VXXCryptionTools AESDecryptString:encryAESContent keyString:key iv:data1];
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
