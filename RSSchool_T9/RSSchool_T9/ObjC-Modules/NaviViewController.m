//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 8/3/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "NaviViewController.h"

@interface NaviViewController ()

@end

@implementation NaviViewController

@synthesize navigationController;
@synthesize firstViewController;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController = [[UINavigationController alloc] init];
        [self.view addSubview:[self.navigationController view]];
        
        if(self.firstViewController == nil)
        {
            SettingsViewController *firstView = [[SettingsViewController alloc] init];
            self.firstViewController = firstView;
        }
        
        [self.navigationController pushViewController:self.firstViewController animated:YES];
}



@end
