//
//  HQFontImage.m
//  IconFont
//
//  Created by hqlulu on 16/7/10.
//  Copyright © 2016年 Taodiandian. All rights reserved.
//

#import "HQFontImage.h"
#import "TBCityIconInfo.h"

@implementation HQFontImage

+ (NSDictionary*)IconDictionary
{
    return @{};
}

+(NSString*)nameToUnicode:(NSString*)name
{
    NSDictionary *nameToUnicode = [self IconDictionary];
    NSString *code = nameToUnicode[name];
    return code ?: name;
}

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color
{
    NSString *code = [self nameToUnicode:name];
    TBCityIconInfo *info = [TBCityIconInfo iconInfoWithText:code size:size color:color];
    return [UIImage iconWithInfo:info];
}

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color inset:(UIEdgeInsets)inset
{
    NSString *code = [self nameToUnicode:name];
    TBCityIconInfo *info = [TBCityIconInfo iconInfoWithText:code size:size color:color inset:inset];
    return [UIImage iconWithInfo:info];
}

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color padding:(CGFloat)paddingPercent
{
    NSString *code = [self nameToUnicode:name];
    CGFloat padding = size * paddingPercent;
    UIEdgeInsets inset = UIEdgeInsetsMake(padding, padding, padding, padding);
    TBCityIconInfo *info = [TBCityIconInfo iconInfoWithText:code size:size color:color inset:inset];
    return [UIImage iconWithInfo:info];
}

@end
