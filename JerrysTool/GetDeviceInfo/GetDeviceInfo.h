//
//  GetDeviceInfo.h
//  JerrysTool
//
//  Created by jerry on 2017/7/1.
//  Copyright © 2017年 jerry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <sys/utsname.h>
@interface GetDeviceInfo : NSObject
/**
 *获取设备名称
 */
+(NSString *)getDeviceName;
/**
 *获取系统版本号
 */
+(NSString *)getSysVersion;
/**
 *获取设备唯一标示(UUID)
 */
+(NSString *)getDeviceUUID;
/**
 *获取设备型号
 */
+(NSString *)getDeviceModel;
/**
 *获取APP版本号
 */
+(NSString *)getAPPVersion;
/**
 *获取APP的build版本
 */
+(NSString *)getAPPBuildVersion;
/**
 *获取APP的名称
 */
+(NSString *)getAPPName;


@end
