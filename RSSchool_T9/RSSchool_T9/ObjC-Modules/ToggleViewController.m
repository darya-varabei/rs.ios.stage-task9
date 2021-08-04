//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 8/2/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "ToggleViewController.h"

@interface ToggleViewController ()

@end

@implementation ToggleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.layer.cornerRadius = 16;
    self.view.frame = CGRectMake(20.0f, 123.0f, UIScreen.mainScreen.bounds.size.width - 40, 104.0f);
    self.view.backgroundColor = UIColor.whiteColor;
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(19, 15, 240, 25)];
    label.text = @"Draw stories";
    [label setFont:[UIFont systemFontOfSize:17]];
    [self.view addSubview: label];
    
    
    CGRect myFrame = CGRectMake(292.0f, 12.0f, 51.0f, 30.0f);
    
    self.mySwitch = [[UISwitch alloc] initWithFrame:myFrame];
        
        [self.mySwitch setOn:YES];
        
        [self.mySwitch addTarget:self
                    action:@selector(switchIsChanged:)
                    forControlEvents:UIControlEventValueChanged];
         
        [self.view addSubview:self.mySwitch];
}

- (void) switchIsChanged:(UISwitch *)paramSender{
     
    if ([paramSender isOn]){
        NSLog(@"The switch is turned on.");
    } else {
        NSLog(@"The switch is turned off.");
    }
     
}


@end
