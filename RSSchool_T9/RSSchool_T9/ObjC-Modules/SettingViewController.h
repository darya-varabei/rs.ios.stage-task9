//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 8/1/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <UIKit/UIKit.h>
#import "ColorsViewController.h"
#import "TableViewController.h"
#import "ToggleViewController.h"

@interface SettingsViewController : UIViewController

@property (nonatomic, strong) ColorsViewController *secondViewController;
@property (nonatomic, retain) TableViewController *thirdViewController;
@property (nonatomic, strong) NSLayoutConstraint *tableViewHeightConstraint;
@property (nonatomic, retain) ToggleViewController *toggleViewController;
@property (strong, nonatomic) UIButton *button;

@property (nonatomic, assign) CGFloat sectionCornerRadius;

@end
