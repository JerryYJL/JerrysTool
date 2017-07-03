//
//  NSString+Regular.m
//  JerrysTool
//
//  Created by jerry on 2017/6/28.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import "NSString+Regular.h"

@implementation NSString (Regular)

#pragma mark ---- 手机号码判断 ----
-(BOOL)isMobileNumber{
    
    NSString *phone = @"1[3578]\\d{9}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phone];
    return [phoneTest evaluateWithObject:self];
    
}

#pragma mark ---- 邮箱判断 ----
-(BOOL)isEmail{
    NSString *email = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",email];
    return [emailTest evaluateWithObject:self];
}

#pragma mark ---- 身份证判断 ----
-(BOOL)isIDCard{
    NSString *idCard = @"\\d{14}[[0-9],0-9xX]";
    NSPredicate *idCardTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",idCard];
    return [idCardTest evaluateWithObject:self];
}

#pragma mark ---- 只是数字和26个英文字母组成的字符串 ----
-(BOOL)isNumberOrLetter{
    NSString *numberOrLetter = @"^[A-Za-z0-9]+$";
    NSPredicate *numberOrLetterTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",numberOrLetter];
    return [numberOrLetterTest evaluateWithObject:self];
}

#pragma mark ---- 数字判断 ----
-(BOOL)isNumber{
    NSString *number = @"^[0-9]*$";
    NSPredicate *numberTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",number];
    return [numberTest evaluateWithObject:self];
}

#pragma mark --- 判断是否为正整数 ----
-(BOOL)isPositiveInteger{
    NSString *positiveInteger = @"^\\+?[1-9][0-9]*$";
    NSPredicate *positiveIntegerTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",positiveInteger];
    return [positiveIntegerTest evaluateWithObject:self];
}

#pragma mark ---- 判断是否为负整数 ----
-(BOOL)isNegativeInteger{
    NSString *negativeInteger = @"^\\-[1-9][]0-9″*$";
    NSPredicate *negativeIntegerTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",negativeInteger];
    return [negativeIntegerTest evaluateWithObject:self];
}

#pragma mark ---- 判断是否为由26个英文字母组成的字符串 ----
-(BOOL)isAlphabet{
    NSString *alphabet = @"^[A-Za-z]+$";
    NSPredicate *alphabetTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",alphabet];
    return [alphabetTest evaluateWithObject:self];
}

#pragma mark ---- 判断是否为由26个大写英文字母组成的字符串 ----
-(BOOL)isCapitalAlphabet{
    NSString *capitalAlphabet = @"^[A-Z]+$";
    NSPredicate *capitalAlphabetTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",capitalAlphabet];
    return [capitalAlphabetTest evaluateWithObject:self];
}

#pragma mark ---- 判断是否为由26个小写英文字母组成的字符串 ----
-(BOOL)isLowerAlphabet{
    NSString *lowerAlphabet = @"^[A-Z]+$";
    NSPredicate *lowerAlphabetTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",lowerAlphabet];
    return [lowerAlphabetTest evaluateWithObject:self];
}

#pragma mark ---- 判断是否为汉语 -----
-(BOOL)isChinese{
    NSString *chinese = @"^[\u4e00-\u9fa5]{0,}$";
    NSPredicate *chineseTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",chinese];
    return [chineseTest evaluateWithObject:self];
}

#pragma mark ---- 判断是否为url ----
-(BOOL)isUrl{
    NSString *url = @"http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w- ./?%&=]*)?";
    NSPredicate *urlTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",url];
    return [urlTest evaluateWithObject:self];
}

#pragma mark ---- 判断是否为QQ号 ----
-(BOOL)isQQ{
    NSString *qq = @"[1-9][0-9]\{4,\\}";
    NSPredicate *qqTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",qq];
    return [qqTest evaluateWithObject:self];
}

#pragma mark ---- 判断字符串内是否含有某个字符串 ----
-(BOOL)isIncludString:(NSString *)rangString{
    return [self rangeOfString:rangString].location != NSNotFound;
}

#pragma mark ---- 将字符串转换成NSData ----
-(NSData *)stringToData{
    return [self dataUsingEncoding:NSUTF8StringEncoding];
}

#pragma mark ---- 截取字符串，从索引开始取长度组成的字符串 ----
-(NSString *)rangeString:(NSUInteger)loc Length:(NSUInteger)len{
    NSRange range = NSMakeRange(loc, len);
    return [self substringWithRange:range];
}

#pragma mark ---- 判断字符串是否为空 ----
-(BOOL)isEmpty{
    if (self == nil) {
        return YES;
    }
    if (self == NULL) {
        return YES;
    }
    if ([self isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([self isEqualToString:@""]) {
        return YES;
    }
    if ([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0) {
        return YES;
    }
    return NO;
}

#pragma mark ---- 检查字符串是否为nil，是的话转为@“” ----
-(NSString *)isNilChange{
    if ([self isKindOfClass:[NSNull class]]) {
        return @"";
    }
    return self;
}

#pragma mark ---- 过滤特殊字符 ----
-(NSString *)filterSpecialString{
    NSCharacterSet *specialString = [NSCharacterSet characterSetWithCharactersInString:@"[]{}（#%-*+=_）\\|~(＜＞$%^&*)_+,.;':|/@!? "];
    return [[[self componentsSeparatedByCharactersInSet:specialString]componentsJoinedByString:@""]stringByReplacingOccurrencesOfString:@"\n" withString:@""];
}

#pragma mark ---- 计算文本size（高度和宽度）----
-(CGSize)sizeWithStringOfFont:(UIFont *)font Size:(CGSize)size LineSpacing:(CGFloat)lineSpacing{
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc]initWithString:self];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineSpacing = lineSpacing;
    [attributeString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, self.length)];
    [attributeString addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, self.length)];
    NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    CGRect rect = [attributeString boundingRectWithSize:size options:options context:nil];
    
    if ((rect.size.height - font.lineHeight) <= paragraphStyle.lineSpacing) {
        if ([self isChinese]) {
            rect = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height-paragraphStyle.lineSpacing);
            
        }
    }
    
    return rect.size;
    
}

#pragma mark ---- 字符串转字典 ----
-(NSDictionary *)stringToDictionary{
    if (self == nil) {
        return nil;
    }
    
    NSData *jsonData = [self stringToData];
    
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    if (err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
    
}

#pragma mark ---- 替换字符串 ----
-(NSString *)replaceStringWithNoNeedString:(NSString *)noNeedString replacingString:(NSString *)replacingString{
    return [self stringByReplacingOccurrencesOfString:noNeedString withString:replacingString];
}



@end
