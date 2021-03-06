//
//  DPSubTitleTableViewModel.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/30.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPSubTitleTableViewModel : NSObject
NSArray *createTypeDataSource();
NSArray *createPerformanceTypeDataSource();
NSArray *actionExtendTypeDataSource();
//算法封装型
NSArray *arithmeticTypeDataSource();
NSArray *abstractTypeDataSource();
NSArray *mementoTypeDataSource() ;
NSArray *decouplingTypeDataSource();
@end

NS_ASSUME_NONNULL_END
