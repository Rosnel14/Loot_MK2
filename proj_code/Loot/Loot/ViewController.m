//
//  ViewController.m
//  Loot
//
//  Created by ros on 6/9/21.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

@synthesize mapView = mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //[self mapLoad];
  //  self.mapView = [[MKMapView alloc] init];
    [self.mapView setDelegate:self];
    [self.view addSubview:mapView];
    [self.mapView setShowsUserLocation:YES];
    NSLog(@"%i", [self.mapView isUserLocationVisible]);
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    CLLocationCoordinate2D location;
    location.latitude = self.mapView.userLocation.coordinate.latitude;
    location.longitude = self.mapView.userLocation.coordinate.longitude;
    region.span = span;
    region.center = location;
    [self.mapView setRegion:region animated:YES];

}


#pragma mark - MKMapView Methods

//setUpMapkit during startup



@end
