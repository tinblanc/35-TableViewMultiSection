//
//  WorldData.h
//  TableViewMultiSection
//
//  Created by Tin Blanc on 4/27/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface WorldData : NSObject
@property ( nonatomic, strong) NSArray* arrayContinents;

+(WorldData*) shareData;
@end
