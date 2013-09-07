//
//  FGStuffCalculator.h
//  TourGuide
//
//  Created by Finn Gaida on 07.09.13.
//  Copyright (c) 2013 Finn Gaida. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface FGStuffCalculator : NSObject <CLLocationManagerDelegate> {
    CLLocationManager *manager;
    CLGeocoder *geocoder;
}

- (void)logSurroundingPlaces;

@end
