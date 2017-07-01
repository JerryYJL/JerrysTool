//
//  NSData+Encryption.h
//  JerrysTool
//
//  Created by jerry on 2017/6/29.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>
@interface NSData (Encryption)
/**
 * AES加密
 * algorithm : CCAlgorithm的枚举类型（一般为kCCAlgorithmAES）
 * key : 加密需要的key，一串字符串
 * iv : 一般为nil
 * options : 需要AES加密的类型，可以点CCOptions进去看枚举
 * error : 返回的错误
 */
-(NSData *)dataEncryptedUseingAlgorithm:(CCAlgorithm)algorithm Key:(id)key InitializationVector:(id)iv Options:(CCOptions)options Error:(CCCryptorStatus *)error;
@end
