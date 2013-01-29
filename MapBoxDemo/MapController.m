//
//  MapController.m
//  MapBoxDemo
//
//  Created by Flip Sasser on 1/29/13.
//  Copyright (c) 2013 Back Forty. All rights reserved.
//

#import "MapController.h"
#import "MapBox.h"

@implementation MapController

@synthesize mapView;

#pragma mark - Setup and teardown

// Setup
- (void)viewDidLoad {
  RMMapBoxSource *onlineSource = [[RMMapBoxSource alloc] initWithMapID:@"flipsasser.map-tlt4zah7"];
//  NSURL *tileSetURL = [[NSBundle mainBundle] URLForResource:@"Baltimore.mbtiles" withExtension:nil];
//  NSLog(@"Tiles: %@", tileSetURL);
//  RMMBTilesSource *localSource = [[RMMBTilesSource alloc] initWithTileSetURL:tileSetURL];
  self.mapView = [[RMMapView alloc] initWithFrame:self.view.frame andTilesource:onlineSource];
  self.mapView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
  self.mapView.hideAttribution = true;
  self.mapView.showLogoBug = false;
//  self.mapView.tileSource = onlineSource;
//  self.mapView.tileSource = localSource;
  [self.view addSubview:self.mapView];
  [super viewDidLoad];
}

// Teardown
- (void)dealloc {
  [self.mapView removeFromSuperview];
  [self.mapView release];
  [super dealloc];
}

@end
