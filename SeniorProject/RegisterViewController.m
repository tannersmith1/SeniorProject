//
//  RegisterViewController.m
//  SeniorProject
//
//  Created by Tanner Smith on 1/14/14.
//  Copyright (c) 2014 Tanner Smith. All rights reserved.
//

#import "RegisterViewController.h"
#import "AFHTTPRequestOperationManager.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (IBAction)registerButtonPressed:(id)sender {
    //Post to web service if response = TRUE, tell user they had success, IF FALSE tell them to choose another name
    self.resultsTextView.text = @"Register button pressed";
    NSString *url = @"http://localhost:8888/createAccount.php";
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    NSDictionary *params = @{@"username": [self.usernameField text],
                             @"password": [self.passwordField text]};
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSString *text = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        self.resultsTextView.text = text;
    }
    failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        self.resultsTextView.text = [error localizedDescription];
    }];
}

//--------------------------------------------------
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hideKeyboard:(id)sender {
    [self.usernameField resignFirstResponder];
    [self.passwordField resignFirstResponder];
    [self.rePasswordField resignFirstResponder];
}


@end
