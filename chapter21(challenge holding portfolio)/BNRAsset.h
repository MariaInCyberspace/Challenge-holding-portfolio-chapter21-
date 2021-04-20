//
//  BNRAsset.h
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 09.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;

@end

NS_ASSUME_NONNULL_END
