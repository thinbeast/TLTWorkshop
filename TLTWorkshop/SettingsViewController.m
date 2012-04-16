//
//  SettingsViewController.m
//  TLTWorkshop
//
//  Created by Richard Han on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SettingsViewController.h"

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

- (void)viewDidLoad
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults]; 
    BOOL showOnStart = [ud boolForKey:@"showContactsOnStart"];
    [showContactAtStartup setOn:showOnStart];
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)   showContactsAtStartUpChanged:(id) sender
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults]; 
    [ud setBool:showContactAtStartup.isOn   forKey:@"showContactsOnStart"];
}
@end
