//
//  DetailCountry.m
//  TableViewMultiSection
//
//  Created by Tin Blanc on 4/27/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "DetailCountry.h"

@interface DetailCountry ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *lblCountry;

@end

@implementation DetailCountry

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image = [UIImage imageNamed:self.country.name];
    self.imageView.layer.borderWidth = 1.0;
    
    self.lblCountry.text = self.country.name;
}



@end
