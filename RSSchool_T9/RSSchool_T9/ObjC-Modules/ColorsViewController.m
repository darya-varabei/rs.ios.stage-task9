//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 8/1/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <Foundation/Foundation.h>
#import "ColorsViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation ColorsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorNamed:@"backgroundWhite"]];
    
    self.tableViewController = [[TableViewController alloc] init];
    [self addChildViewController:self.tableViewController];
    self.tableViewController.view.frame = CGRectMake(20.0, 123.0, UIScreen.mainScreen.bounds.size.width-40, 600.0);
    self.tableViewController.view.layer.cornerRadius = 25;
    [self.view addSubview:self.tableViewController.view];
    [self.tableViewController didMoveToParentViewController:self];
}

- (void)setMaskTo:(UIView*)view byRoundingCorners:(UIRectCorner)corners
{
    UIBezierPath *rounded = [UIBezierPath bezierPathWithRoundedRect:view.bounds
                                                  byRoundingCorners:corners
                                                        cornerRadii:CGSizeMake(20.0, 20.0)];
    CAShapeLayer *shape = [[CAShapeLayer alloc] init];
    [shape setPath:rounded.CGPath];
    view.layer.mask = shape;
}

- (void)viewWillAppear:(BOOL)animated {
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    self.navigationController.toolbarHidden = NO;
    [super viewWillAppear:animated];
}
@end
