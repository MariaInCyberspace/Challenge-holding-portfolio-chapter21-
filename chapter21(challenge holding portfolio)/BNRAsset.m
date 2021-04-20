//
//  BNRAsset.m
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 09.04.2021.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc { // To make it clear which particular instance of BNRAsset is being deallocated
    NSLog(@"deallocating %@", self); 
}

@end
