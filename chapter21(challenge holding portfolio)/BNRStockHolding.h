//
//  BNRStockHolding.h
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 07.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject

// BNRStockHolding has some properties
@property (nonatomic, copy) NSString *ticker;
@property (nonatomic, copy) NSString *companyName;
@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;

// BNRStockHolding has some methods
- (float)costInDollars;
- (float)valueInDollars;
- (void)addYourselfToArray:(NSMutableArray *)anArray;


@end

NS_ASSUME_NONNULL_END
