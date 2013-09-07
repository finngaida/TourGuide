//
//  FGViewController.m
//  TourGuide
//
//  Created by Finn Gaida on 06.09.13.
//  Copyright (c) 2013 Finn Gaida. All rights reserved.
//

#import "FGViewController.h"

@implementation FGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [[FGStuffCalculator new] logSurroundingPlaces];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
