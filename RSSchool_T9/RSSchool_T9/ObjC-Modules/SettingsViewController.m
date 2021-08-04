//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 7/31/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <Foundation/Foundation.h>
#import "SettingViewController.h"
#import <UIKit/UIKit.h>

@interface SettingsViewController()

@end

@implementation SettingsViewController
@synthesize secondViewController;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view setBackgroundColor:[UIColor colorNamed:@"backgroundWhite"]];
    
    
    self.toggleViewController = [[ToggleViewController alloc] init];
    [self addChildViewController:self.toggleViewController];
    self.toggleViewController.view.frame = CGRectMake(20.0, 123.0, UIScreen.mainScreen.bounds.size.width-40, 120.0);
    [self.view addSubview:self.toggleViewController.view];
    [self.toggleViewController didMoveToParentViewController:self];
    
    self.button = [[UIButton alloc]initWithFrame:CGRectMake(20.0, 174.0, UIScreen.mainScreen.bounds.size.width-40, 52.0)];
    [self.button setBackgroundColor:[UIColor whiteColor]];
    [self.button setTitle:@"Stroke color" forState:UIControlStateNormal];
    [self.button setImage:[UIImage imageNamed:@"chevron.right"] forState: UIControlStateNormal];
    
    CGFloat spacing = 6.0;
    CGSize imageSize = self.button.imageView.frame.size;
    self.button.titleEdgeInsets = UIEdgeInsetsMake(
      0.0, - 220, - (imageSize.height + spacing), 0.0);
    [self.button setFont:[UIFont systemFontOfSize:17]];
    self.button.layer.cornerRadius = 16;
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(nextTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    self.navigationController.toolbarHidden = NO;
    
    [self setupNavigationItems];
}


- (void)setupNavigationItems {
    self.navigationItem.title = [NSString stringWithFormat:@"%s", "Settings"];
}

- (void)nextTapped:(id)sender {
                ColorsViewController *secondView = [[ColorsViewController alloc] init];
                self.secondViewController = secondView;

            [self.navigationController pushViewController:self.secondViewController animated:YES];
}


@end
