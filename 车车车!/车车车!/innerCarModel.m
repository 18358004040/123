//
//  innerCarModel.m
//  车车车!
//
//  Created by 褚彦超 on 2017/3/16.
//  Copyright © 2017年 褚彦超. All rights reserved.
//

#import "innerCarModel.h"

@implementation innerCarModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}

+ (instancetype)innerCarModelWithDict:(NSDictionary *)dict {
    
    return [[self alloc] initWithDict:dict];
}
@end
