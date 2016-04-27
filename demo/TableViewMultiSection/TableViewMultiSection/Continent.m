//
//  Continent.m
//  TableViewMultiSection
//
//  Created by Tin Blanc on 4/27/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "Continent.h"

@implementation Continent

- ( instancetype) initWithName: ( NSString*) name
                  andCountries: (NSArray*) countries{
    if (self = [super init]) {
        self.name = name;
        self.arrayCountries = countries;
    }
    return self;
}

@end
