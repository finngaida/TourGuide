//
//  FGViewController.m
//  TourGuide
//
//  Created by Finn Gaida on 06.09.13.
//  Copyright (c) 2013 Finn Gaida. All rights reserved.
//

#import "FGViewController.h"


@interface FGViewController () <UISearchBarDelegate>

@property(strong,nonatomic)UISearchBar *searchBar;

@end

@implementation FGViewController


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    FGStuffCalculator *c = [FGStuffCalculator new];
    [c logSurroundingPlaces];
    
    self.searchBar = [UISearchBar new];
    self.searchBar.delegate = self;
    self.navigationItem.titleView = self.searchBar;
    
    self.mapView.showsUserLocation = YES;
    
    
    [c fetchCurrentLocationWithHandler:^(CLLocation *location, NSError *error) {
    
        [self.mapView setRegion:MKCoordinateRegionMake(location.coordinate, MKCoordinateSpanMake(1, 1)) animated:NO];
        
        NSLog(@"Google response: %@", [c fetchLocalPlacemarksUsingGooglePlacesAroundLocation:location radius:5000]);
        
    }];
}


-(void)startSearch:(NSString *)query{
    NSLog(@"Searched for %@",query);

}




-(void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    [self.navigationItem setRightBarButtonItem:[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelledSearch:)]];
    
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [self startSearch:searchBar.text];
    
    [self cancelledSearch:searchBar];
}

-(void)cancelledSearch:(id)sender{
    [self.searchBar resignFirstResponder];
    [self.navigationItem setRightBarButtonItem:nil];
}
@end
