//
//  BNRPerson.h
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 09.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject

// BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

// BNRPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;

@end

NS_ASSUME_NONNULL_END
