//
//  BNRPortfolio.h
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 07.04.2021.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

NS_ASSUME_NONNULL_BEGIN

@interface BNRPortfolio : NSObject
{
    NSMutableArray *_holdings;
}

// @property (nonatomic) float totalValue;
@property (nonatomic, copy) NSArray *holdings;

- (float)totalValue;
// - (void)setHoldings:(NSArray *)h;
- (void)addHolding:(BNRStockHolding *)h;

@end

NS_ASSUME_NONNULL_END
