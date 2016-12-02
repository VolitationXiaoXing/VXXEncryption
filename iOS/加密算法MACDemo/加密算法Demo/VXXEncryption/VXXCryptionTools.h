//
//  VXXCryptionTools.h
//  加密算法
//
//  Created by Volitation小星 on 15/10/8.
//  Copyright © 2016年 Volitation小星. All rights reserved.
//

#import <Foundation/Foundation.h>

///  加密工具类
///  提供RSA & AES & DES加密方法
@interface VXXCryptionTools : NSObject

#pragma mark - DES 加密/解密

+ (NSData *)DESEncryptData:(NSData *)data keyString:(NSString *)keyString iv:(NSData *)iv;


+ (NSString *)DESEncryptString:(NSString *)string keyString:(NSString *)keyString iv:(NSData *)iv;


+ (NSData *)DESDecryptData:(NSData *)data keyString:(NSString *)keyString iv:(NSData *)iv;


+ (NSString *)DESDecryptString:(NSString *)string keyString:(NSString *)keyString iv:(NSData *)iv;

#pragma mark - AES 加密/解密

+ (NSData *)AESEncryptData:(NSData *)data keyString:(NSString *)keyString iv:(NSData *)iv;


+ (NSString *)AESEncryptString:(NSString *)string keyString:(NSString *)keyString iv:(NSData *)iv;


+ (NSData *)AESDecryptData:(NSData *)data keyString:(NSString *)keyString iv:(NSData *)iv;


+ (NSString *)AESDecryptString:(NSString *)string keyString:(NSString *)keyString iv:(NSData *)iv;




#pragma mark - RSA 加密/解密算法
- (void)loadPublicKeyWithFilePath:(NSString *)filePath;

- (void)loadPrivateKey:(NSString *)filePath password:(NSString *)password;

- (NSData *)RSAEncryptData:(NSData *)data;

- (NSString *)RSAEncryptString:(NSString *)string;

- (NSData *)RSADecryptData:(NSData *)data;

- (NSString *)RSADecryptString:(NSString *)string;

@end
