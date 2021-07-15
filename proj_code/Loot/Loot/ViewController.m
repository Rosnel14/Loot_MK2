//
//  ViewController.m
//  Loot
//
//  Created by ros on 6/9/21.
//

#import "ViewController.h"
#import "Loot-Swift.h"

@interface ViewController ()
@property (nonatomic, strong) DashView *dashboardView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   


}

- (IBAction)DashViewBtn:(id)sender {
    _dashboardView = [[DashView alloc]init];
    [self presentViewController:_dashboardView animated:YES completion:nil];
    
}



@end
