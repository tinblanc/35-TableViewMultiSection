//
//  TableViewMultiSection.m
//  TableViewMultiSection
//
//  Created by Tin Blanc on 4/27/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "TableViewMultiSection.h"
#import "WorldData.h"
#import "Continent.h"
#import "Country.h"
#import "DetailCountry.h"

@implementation TableViewMultiSection
{
    NSArray* arrayContinent;
}

-(void) viewDidLoad {
    [super viewDidLoad];
    arrayContinent = [[WorldData shareData] arrayContinents];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return arrayContinent.count;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    Continent* continent = arrayContinent[section];
    return continent.arrayCountries.count;
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Continent* continent = arrayContinent[indexPath.section];
    Country* country = continent.arrayCountries[indexPath.row];
    
    cell.textLabel.text = country.name;
    cell.detailTextLabel.text = country.capitalCity;
    cell.imageView.image = [UIImage imageNamed:country.name];
    
    
    // Change image Size
    CGSize itemSize = CGSizeMake(100, 60);
    UIGraphicsBeginImageContext(itemSize);
    CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
    [cell.imageView.image drawInRect:imageRect];
    cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    
    
    return cell;
}

// Hiển thị theo section
-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    Continent* continent = arrayContinent[section];
    return continent.name;
}

// Thay đổi background + màu chữ cho Section
-(void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    // Background Color
    view.tintColor = [UIColor grayColor];
    
    // Text Color
    UITableViewHeaderFooterView* header = (UITableViewHeaderFooterView*) view;
    [header.textLabel setTextColor:[UIColor whiteColor]];
}

// Hiển thị thao tác người dùng
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Continent* continent = arrayContinent[indexPath.section];
    Country* country = continent.arrayCountries[indexPath.row];
    
    NSLog(@"%@ - %@", country.name, country.capitalCity);
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    DetailCountry* detail = (DetailCountry*)segue.destinationViewController;
    NSIndexPath* selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
    Continent* continent = arrayContinent[selectedIndexPath.section];
    Country* country = continent.arrayCountries[selectedIndexPath.row];
    
    detail.country = country;
    
    
    
    
}




@end
