//
//  Country.h
//  TableViewMultiSection
//
//  Created by Tin Blanc on 4/27/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Country : NSObject
@property ( nonatomic, readonly) NSString * name;
@property ( nonatomic, readonly) NSString * capitalCity;

-(instancetype) init:(NSString*) string;
@end
