//
//  ConverterController.h
//  CurrencyConverter
//
//  Created by jinjing on 10/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Converter;

@interface ConverterController : NSObject {
    IBOutlet NSTextField* amountField;
    IBOutlet NSTextField* dollarField;
    IBOutlet NSTextField* rateField;
    
    Converter* converter;
}

- (IBAction)convert:(id)sender;

@end
