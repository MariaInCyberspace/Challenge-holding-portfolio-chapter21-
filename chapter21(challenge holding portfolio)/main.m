//
//  main.m
//  chapter21(challenge holding portfolio)
//
//  Created by Мария Спиридонова on 07.04.2021.
//

#import <Foundation/Foundation.h>
#import "BNRForeighStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create an array of BNRPortfolio
        BNRPortfolio *holdings = [[BNRPortfolio alloc] init];
        
        // Generate names for companies and ticker labels
        NSArray *localCompaniesNames = @[@"Apple", @"Spotify", @"Nike"]; // For instances of BNRStockHolding
        NSArray *foreignCompaniesNames = @[@"Lufthanza", @"Sibera", @"WillyWonka"]; // For instances of BNRForeignStockHolding
        NSArray *localTicker = @[@"APL", @"SPF", @"NIK"];
        NSArray *foreignTicker = @[@"LFT", @"SBR", @"WLW"];
        
        // Make instances of BNRStockHolding
        for (int i = 0; i < [localCompaniesNames count]; i++) {
            // Create an instance of BNRStockHolding
            BNRStockHolding *company = [[BNRStockHolding alloc] init];
            
            
            // Give the instance variables some values
            company.companyName = [localCompaniesNames objectAtIndex:i];
            company.purchaseSharePrice = 2.30 + i;
            company.currentSharePrice = 4.50 + i;
            company.numberOfShares = 40 + i;
            company.ticker = [localTicker objectAtIndex:i];
            
            [holdings addHolding:company];
            NSLog(@"%@", company);
            
            
        }
        
        // Make instances of BNRForeignStockHolding
        for (int i = 0; i < [foreignCompaniesNames count]; i++) {
            BNRForeighStockHolding *foreignCompany = [[BNRForeighStockHolding alloc] init];
            // Give the instance variables some values
            foreignCompany.companyName = [foreignCompaniesNames objectAtIndex:i];
            foreignCompany.purchaseSharePrice = 2.30 + i;
            foreignCompany.currentSharePrice = 4.50 + i;
            foreignCompany.numberOfShares = 40 + i;
            foreignCompany.conversionRate = 0.5 + i;
            foreignCompany.ticker = [foreignTicker objectAtIndex:i];
            
            [holdings addHolding:foreignCompany];
            NSLog(@"%@", foreignCompany);
        }
        
        
    }
    return 0;
}
