//
//  NSDictionary+Regular.m
//  JerrysTool
//
//  Created by jerry on 2017/6/30.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import "NSDictionary+Regular.h"

@implementation NSDictionary (Regular)

#pragma mark ---- 字典转字符串 ----
-(NSString *)dictionaryToNsstring{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
}

#pragma mark ---- 字典转data ----
-(NSData *)dictionaryToData{
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&parseError];
    return jsonData;
}

@end
