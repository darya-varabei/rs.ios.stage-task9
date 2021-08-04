//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Дарья Воробей
// On: 8/1/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "TableViewController.h"

@interface TableViewController ()
@property (strong,nonatomic) NSArray  *content;
@property (strong,nonatomic) NSIndexPath* checkedIndexPath;
@end

@implementation TableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.content = @[ @"#be2813", @"#3802da", @"#467c24",@"#808080",@"#8e5af7",@"#f07f5a",@"#f3af22",@"#3dacf7",@"#e67aa4",@"#0f2e3f",@"#f213711",@"#511307",@"#92002b"];
    
    self.view.frame = CGRectMake(20, 100, UIScreen.mainScreen.bounds.size.width - 40, 600);
    self.view.layer.cornerRadius = 16;
       self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;

       [self.view addSubview:self.tableView];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _content.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
            
        }
    cell.tintColor = UIColor.redColor;
    if([self.checkedIndexPath isEqual:indexPath])
    {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }

    
    cell.textLabel.text =  [_content objectAtIndex:indexPath.row];
    cell.textLabel.textColor = [UIColor colorNamed:[_content objectAtIndex:indexPath.row]];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSLog(@"title of cell %@", [_content objectAtIndex:indexPath.row]);
    
    if(self.checkedIndexPath)
       {
           UITableViewCell* uncheckCell = [tableView
                        cellForRowAtIndexPath:self.checkedIndexPath];
           uncheckCell.accessoryType = UITableViewCellAccessoryNone;
       }
       UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
       cell.accessoryType = UITableViewCellAccessoryCheckmark;
       self.checkedIndexPath = indexPath;
}




@end
