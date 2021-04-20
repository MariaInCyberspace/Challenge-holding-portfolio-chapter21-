//
//  BNREmployee.m
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 09.04.2021.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee

// Accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets {
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    // Is assets nil?
    if (!_assets) {
        // Create the array
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}

- (unsigned int)valueOfAssets {
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}
- (double)yearsOfEmployment {
    // Do I have a non-nil hireDate?
    if (self.hireDate) {
        // NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; // Seconds per year
    } else {
        return 0;
    }
}

// Override the parent's BMI calculating method
- (float)bodyMassIndex {
    return [super bodyMassIndex] * 0.9; // Make BMI 10% less
}

// Override NSObject's description method
- (NSString *)description {
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}
@end
