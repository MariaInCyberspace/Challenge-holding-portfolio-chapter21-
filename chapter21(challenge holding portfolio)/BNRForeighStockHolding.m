//
//  BNRForeighStockHolding.m
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 07.04.2021.
//

#import "BNRForeighStockHolding.h"

@implementation BNRForeighStockHolding

- (float)costInDollars {
    float c = [super costInDollars];
    return c * [self conversionRate];
}

- (float)valueInDollars {
    float v = [super valueInDollars];
    return v * [self conversionRate];
}

@end
