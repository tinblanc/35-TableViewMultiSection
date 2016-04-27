//
//  WorldData.m
//  TableViewMultiSection
//
//  Created by Tin Blanc on 4/27/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "WorldData.h"
#import "Country.h"
#import "Continent.h"

@implementation WorldData

+(WorldData*) shareData {
    static WorldData* worldData = nil;
    static dispatch_once_t dispatch_Once;
    dispatch_once(&dispatch_Once, ^{
        worldData = [[WorldData alloc] init];
    });
    
    return worldData;
}

-(instancetype) init {
    if (self = [super init]) {
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"plist"];
        
        NSArray* array = [NSArray arrayWithContentsOfFile:filePath];
        
        NSMutableArray* tempArray = [[NSMutableArray alloc] initWithCapacity:[array count]];
        
        
        for (NSDictionary* dict in array) {
            NSArray* tempCountries = [dict objectForKey:@"countries"]; // lấy countries từ array
            NSMutableArray* arrayCountries = [NSMutableArray arrayWithCapacity:[tempArray count]];
            
            for (NSString* string in tempCountries) {
                [arrayCountries addObject:[[Country alloc] init:string]]; // add countries vào mảng mutableArray
            }
            
            [tempArray addObject:[[Continent alloc] initWithName:[dict objectForKey:@"continent"] andCountries:[NSArray arrayWithArray:arrayCountries]]];
        }
        
        _arrayContinents = [NSArray arrayWithArray: tempArray];
        
    }
    
    return self;
}

@end
