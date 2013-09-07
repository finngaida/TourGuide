//
//  FGViewController.h
//  TourGuide
//
//  Created by Finn Gaida on 06.09.13.
//  Copyright (c) 2013 Finn Gaida. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "FGStuffCalculator.h"

@interface FGViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
