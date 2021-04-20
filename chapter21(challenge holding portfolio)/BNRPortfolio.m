//
//  BNRPortfolio.m
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 07.04.2021.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@implementation BNRPortfolio

// Accessors for holdings properties
- (void)setHoldings:(NSArray *)h {
    _holdings = [h mutableCopy];
}

- (NSArray *)holdings {
    return [_holdings copy];
}

- (void)addHolding:(BNRStockHolding *)h {
    // Is holdings nil?
    if (!_holdings) {
        // Create the array
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:h];
}

- (float)totalValue {
    // Sum up the total value of the holdings
    float sum = 0.0;
    for (BNRStockHolding *h in _holdings) {
        sum += [h valueInDollars];
    }
    return sum;
}

@end
