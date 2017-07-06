//
//  ViewController.m
//  Walla
//
//  Created by Apple on 7/6/17.
//  Copyright © 2017 Maliwan. All rights reserved.
//

#import "ViewController.h"
#import <CBStoreHouseRefreshControl/CBStoreHouseRefreshControl.h>
@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIWebView *webView;
@property (nonatomic, strong) CBStoreHouseRefreshControl *refreshControl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
}


- (void)setup {
    self.refreshControl = [CBStoreHouseRefreshControl attachToView:self.view
                                                            target:self
                                                     refreshAction:@selector(refresh)
                                                             plist:@"AKTA"
                                                             color:[UIColor blackColor]
                                                         lineWidth:2
                                                        dropHeight:80
                                                             scale:1
                                              horizontalRandomness:150
                                           reverseLoadingAnimation:NO
                                           internalAnimationFactor:0.7];
    
    [self.refreshControl start];
}

- (void)refresh {
    
    
}


@end
