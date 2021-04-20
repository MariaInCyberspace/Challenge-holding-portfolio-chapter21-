//
//  BNRStockHolding.m
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 07.04.2021.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars {
    return [self purchaseSharePrice] * [self numberOfShares];
}
- (float)valueInDollars {
    return [self currentSharePrice] * [self numberOfShares];
}

- (void)addYourselfToArray:(NSMutableArray *)anArray {
    [anArray addObject:self];
}

// Overriding the description method of NSObject
- (NSString *)description {
    return [NSString stringWithFormat:@"<Company %@. Ticker %@>", self.companyName, self.ticker];
}

@end
