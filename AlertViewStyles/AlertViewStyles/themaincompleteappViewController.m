//
//  themaincompleteappViewController.m
//  AlertViewStyles
//
//  Created by Robert DeNicola on 6/17/12.
//  Copyright (c) 2012 Developmental Applications. All rights reserved.
//

#import "themaincompleteappViewController.h"

@implementation themaincompleteappViewController



//Main Code:

- (IBAction)normalAlert { 
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title" message:@"Message" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Other", nil]; [alert setAlertViewStyle:UIAlertViewStyleDefault]; [alert setTag:0]; [alert show];
    
    
    
    
}


- (IBAction)passwordAlert { 
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title" message:@"Message" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Other", nil]; [alert setAlertViewStyle:UIAlertViewStyleLoginAndPasswordInput]; [alert setTag:1]; [alert show]; 
    
}

- (IBAction)normalTextAlert { 
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title" message:@"Message" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Other", nil]; [alert setAlertViewStyle:UIAlertViewStylePlainTextInput]; [alert setTag:2]; [alert show]; 
    
}

- (IBAction)secureTextAlert { 
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Title" message:@"Message" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Other", nil]; [alert setAlertViewStyle:UIAlertViewStyleSecureTextInput]; [alert setTag:3]; [alert show]; 
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{ 
    if (alertView.tag == 0) { 
        Password.text = @""; Login_TextLabel.text = @"Normal Alert"; 
    } else if (alertView.tag == 1) { 
        Password.text = [[alertView textFieldAtIndex:1] text]; 
        Login_TextLabel.text = [[alertView textFieldAtIndex:0] text]; } 
    else if (alertView.tag == 2) { 
            Password.text = @""; Login_TextLabel.text = [[alertView textFieldAtIndex:0] text]; 
    } else { Password.text = @""; Login_TextLabel.text = [[alertView textFieldAtIndex:0] text]; 
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
