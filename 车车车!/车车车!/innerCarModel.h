//
//  innerCarModel.h
//  车车车!
//
//  Created by 褚彦超 on 2017/3/16.
//  Copyright © 2017年 褚彦超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface innerCarModel : NSObject


@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *icon;


- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)innerCarModelWithDict:(NSDictionary *)dict;

@end
