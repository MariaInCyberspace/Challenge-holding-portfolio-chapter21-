//
//  BNRPerson.m
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 09.04.2021.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)bodyMassIndex {
    return [self weightInKilos] / ([self heightInMeters] * [self heightInMeters]);
}

@end
