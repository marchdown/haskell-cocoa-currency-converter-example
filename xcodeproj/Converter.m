//
//  Converter.m
//  CurrencyConverter
//
//  Created by jinjing on 10/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Converter.h"


@implementation Converter

@synthesize sourceCurrencyAmount, rate;

- (float)convertCurrency {
    return self.sourceCurrencyAmount * self.rate;
}

@end


float convert_currency(float amount, float rate) {
    return amount * rate;
}
