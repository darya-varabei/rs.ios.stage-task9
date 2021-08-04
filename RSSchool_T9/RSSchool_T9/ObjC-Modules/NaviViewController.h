//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 8/3/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <UIKit/UIKit.h>
#import "SettingViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface NaviViewController : UINavigationController
@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) SettingsViewController *firstViewController;
@end

NS_ASSUME_NONNULL_END
