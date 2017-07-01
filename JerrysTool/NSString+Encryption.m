//
//  NSString+Encryption.m
//  JerrysTool
//
//  Created by jerry on 2017/6/29.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import "NSString+Encryption.h"

@implementation NSString (Encryption)

#pragma mark ---- MD5加密 ----
-(NSString *)MD5Encryption{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, strlen(cStr), digest);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH *2];
    for (int i = 0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x",digest[i]];
        
    }
    return output;
}

#pragma mark ---- Base64 ----
-(NSString *)stringToBase64{
   return [[self dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:0];
}





@end
