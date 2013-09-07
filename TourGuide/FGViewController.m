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
    [[FGStuffCalculator new] logSurroundingPlaces];
    
    self.searchBar = [UISearchBar new];
    self.searchBar.delegate = self;
    self.navigationItem.titleView = self.searchBar;
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
