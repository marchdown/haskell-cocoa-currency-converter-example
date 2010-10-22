//
//  Converter.h
//  CurrencyConverter
//
//  Created by jinjing on 10/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Converter : NSObject {
    float sourceCurrencyAmount, rate;
}

@property (readwrite) float sourceCurrencyAmount, rate;

- (float) convertCurrency;

@end
