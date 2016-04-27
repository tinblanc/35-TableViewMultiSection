//
//  Country.m
//  TableViewMultiSection
//
//  Created by Tin Blanc on 4/27/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "Country.h"

@implementation Country


-(instancetype) init:(NSString *)string {
    if (self = [super init]) {
        NSArray * country_capital = [string componentsSeparatedByString:@"|"]; // tách các từ được phân cách nhau bởi dấu | và đưa vào mảng
        _name = country_capital[0];
        _capitalCity = country_capital[1];
    }
    
    return self;
}

@end
