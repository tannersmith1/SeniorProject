//
//  TeamViewController.m
//  SeniorProject
//
//  Created by Tanner Smith on 1/23/14.
//  Copyright (c) 2014 Tanner Smith. All rights reserved.
//

#import "TeamViewController.h"
#import "cUserSingleton.h"

@interface TeamViewController ()

@end

@implementation TeamViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    cUserSingleton *user = [cUserSingleton getInstance];
    teamArray = [NSArray arrayWithArray:user.parties];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [teamArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleID = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleID];
    }
    
    cell.textLabel.text = [teamArray objectAtIndex:indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
