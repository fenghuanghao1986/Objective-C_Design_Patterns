//
//  ZHFCabDriver.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHFCar.h"
#import "ZHFTaximeter.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFCabDriver : NSObject
- (void)driveToLocation:(CGPoint)x;

@end

NS_ASSUME_NONNULL_END
