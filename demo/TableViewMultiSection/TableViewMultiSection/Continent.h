//
//  Continent.h
//  TableViewMultiSection
//
//  Created by Tin Blanc on 4/27/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Continent : NSObject
@property ( nonatomic, strong) NSString* name;
@property ( nonatomic, strong) NSArray* arrayCountries;

- ( instancetype) initWithName: ( NSString*) name andCountries: (NSArray*) countries;
@end
