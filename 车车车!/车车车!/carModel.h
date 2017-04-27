//
//  carModel.h
//  车车车!
//
//  Created by 褚彦超 on 2017/3/16.
//  Copyright © 2017年 褚彦超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface carModel : NSObject
@property(nonatomic,copy)NSString* title;

@property(nonatomic,strong)NSArray* cars;


- (instancetype)initWithDict:(NSDictionary*)dict;

+ (instancetype)carModelWithDict:(NSDictionary*)dict;

@end
