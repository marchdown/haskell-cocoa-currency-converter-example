//
//  ConverterController.m
//  CurrencyConverter
//
//  Created by jinjing on 10/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ConverterController.h"
#import "Converter.h"
#import "ffi.h"

@implementation ConverterController


- (IBAction)convert:(id)sender {
    /*
    float amount;
    converter = [[Converter alloc]init];
    
    converter.sourceCurrencyAmount = [dollarField floatValue];
    converter.rate = [rateField floatValue];
    
    amount = [converter convertCurrency];
    
    [amountField setFloatValue:amount];
    
    [rateField selectText:self];
    */
    
    [amountField setFloatValue:convert([dollarField floatValue], [rateField floatValue])];

    [rateField selectText:self];
}


@end
