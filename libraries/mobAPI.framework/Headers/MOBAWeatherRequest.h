//
//  MOBAWeatherRequest.h
//  MOBApiCloud
//
//  Created by fenghj on 15/10/9.
//  Copyright © 2015年 mob. All rights reserved.
//

#import "MOBARequest.h"

/**
 *  天气相关请求
 */
@interface MOBAWeatherRequest : MOBARequest

/**
 *  查询天气
 *
 *  @param cityName 城市名称
 *  @param provinceName 所属省份名称
 *
 *  @return 请求对象
 */
+ (MOBAWeatherRequest *) searchRequestByCityName:(NSString *)cityName province:(NSString *)provinceName;

/**
 *  获取城市列表
 *
 *  @return 请求对象
 */
+ (MOBAWeatherRequest *) citysRequest;

/**
 *  根据ip地址查询天气
 *
 *  @param ip 网络ip地址
 *
 *  @return 请求对象
 */
+ (MOBAWeatherRequest *) searchRequestByIP:(NSString *)ip;

@end
