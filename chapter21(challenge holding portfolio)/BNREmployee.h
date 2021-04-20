//
//  BNREmployee.h
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 09.04.2021.
//

#import "BNRPerson.h"
@class BNRAsset;

NS_ASSUME_NONNULL_BEGIN

@interface BNREmployee : BNRPerson

{
    NSMutableArray *_assets;
}
@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;

- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end

NS_ASSUME_NONNULL_END
