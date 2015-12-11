//
//  MOBAPostcodeRequest.h
//  MOBApiCloud
//
//  Created by fenghj on 15/10/9.
//  Copyright © 2015年 mob. All rights reserved.
//

#import "MOBARequest.h"

/**
 *  邮编相关请求
 *
 *  @author vimfung
 */
@interface MOBAPostcodeRequest : MOBARequest

/**
 *  查询邮编所属地址
 *
 *  @param postcode 邮政编码，必填项，不允许为nil
 *
 *  @return 请求对象
 */
+ (MOBAPostcodeRequest *) addressRequestByPostcode:(NSString *)postcode;

/**
 *  获取省市区域列表
 *
 *  @return 请求对象
 */
+ (MOBAPostcodeRequest *) pcdRequest;

/**
 *  查询邮政编码
 *
 *  @param pid 省ID，必填项，不允许为nil
 *  @param cid 市ID，必填项，不允许为nil
 *  @param q   地名，可以为nil
 *
 *  @return 请求对象
 */
+ (MOBAPostcodeRequest *) searchRequestByPid:(NSString *)pid
                                         cid:(NSString *)cid
                                           q:(NSString *)q;

@end
