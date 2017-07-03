//
//  NSString+Encryption.h
//  JerrysTool
//
//  Created by jerry on 2017/6/29.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
@interface NSString (Encryption)
/**
 *MD5加密
 */
-(NSString *)MD5Encryption;
/**
 *Base64
 */
-(NSString *)stringToBase64;
@end
