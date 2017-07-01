//
//  NSString+Regular.h
//  JerrysTool
//
//  Created by jerry on 2017/6/28.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Regular)

/**
 *判断是否为手机号
 */
-(BOOL)isMobileNumber;
/**
 *判断是否为邮箱
 */
-(BOOL)isEmail;
/**
 *判断是否为身份证号
 */
-(BOOL)isIDCard;
/**
 *判断是否为数字和字母组成的字符串
 */
-(BOOL)isNumberOrLetter;
/**
 *判断是否为数字
 */
-(BOOL)isNumber;
/**
 *判断是否为正整数
 */
-(BOOL)isPositiveInteger;
/**
 *判断是否为负整数
 */
-(BOOL)isNegativeInteger;
/**
 *判断是否为由26个英文字母组成的字符串
 */
-(BOOL)isAlphabet;
/**
 *判断是否为由26个大写英文字母组成的字符串
 */
-(BOOL)isCapitalAlphabet;
/**
 *判断是否为由26个小写英文字母组成的字符串
 */
-(BOOL)isLowerAlphabet;
/**
 *判断是否为汉语
 */
-(BOOL)isChinese;
/**
 *判断是否为url
 */
-(BOOL)isUrl;
/**
 *判断是否为QQ号
 */
-(BOOL)isQQ;
/**
 *判断字符串是否含有某个字符串
 * rangString : 查询的字符串
 */
-(BOOL)isIncludString:(NSString *)rangString;
/**
 *截取字符串，从索引开始取长度组成的字符串
 * loc : 开始索引
 * len : 长度
 */
-(NSString *)rangeString:(NSUInteger)loc Length:(NSUInteger)len;
/**
 *判断字符串是否为空
 */
-(BOOL)isEmpty;
/**
 *检查字符串是否为nil，是的话转为@“”
 */
-(NSString *)isNilChange;
/**
 *过滤特殊字符
 */
-(NSString *)filterSpecialString;
/**
 *计算文本size（高度和宽度）
 * font : 文本的字体大小
 * size : 放文本的Label的宽 + MAXFLOAT
 * lineSpacing : 文本的行间距
 */
-(CGSize)sizeWithStringOfFont:(UIFont *)font Size:(CGSize)size LineSpacing:(CGFloat)lineSpacing;
/**
 *字符串转字典
 */
-(NSDictionary *)stringToDictionary;
@end
