//
//  ViewController.h
//  Loot
//
//  Created by ros on 6/9/21.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>{
    MKMapView * mapView;
}

@property (nonatomic, retain)IBOutlet MKMapView * mapView; 


@end

