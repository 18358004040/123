//
//  carModel.m
//  车车车!
//
//  Created by 褚彦超 on 2017/3/16.
//  Copyright © 2017年 褚彦超. All rights reserved.
//

#import "carModel.h"
#import "innerCarModel.h"
@implementation carModel
- (instancetype)initWithDict:(NSDictionary*)dict
{
    if (self=[super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
    
    
}

+ (instancetype)carModelWithDict:(NSDictionary*)dict
{
    
    return [[self alloc]initWithDict:dict];
    
    
}
- (void)setCars:(NSArray *)cars
{
    NSMutableArray* mutable=[NSMutableArray array];
    
    
    for (NSDictionary* dict in cars) {
        innerCarModel* innerModel=[innerCarModel innerCarModelWithDict:dict];
        
        [mutable addObject:innerModel];
    }
    
    _cars=mutable.copy;
    
    
    
}
@end
