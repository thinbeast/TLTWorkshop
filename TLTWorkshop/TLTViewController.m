//
//  TLTViewController.m
//  TLTWorkshop
//
//  Created by Ronnie on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TLTViewController.h"
#import "CalculatorBrain.h"

@interface TLTViewController() {
@private
    id<CalculatorBrain> brain;
}
@end

@implementation TLTViewController

@synthesize brainName;

- (void)resetMyBrain
{
    [brain release];
    brain = [[NSClassFromString(brainName) alloc] init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    brainName = @"TLTCalculatorBrain";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    [brainName release];
    [brain release];
    osd = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)buttonPressed:(id)sender
{
    if (!brain || ![NSStringFromClass([brain class]) isEqualToString:brainName]) {
        [self resetMyBrain];
    }
        
    
    if (!brain) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"What happened to me?"
                                                            message:@"Sorry, I don't have a brain. Cannot serve you."
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil, nil];
        [alertView show];
        return;
    }
    
    UIButton* button = (UIButton*)sender;
    NSString* string = button.titleLabel.text;
    int display = 0;
    if ([string isEqualToString:@"="]) {
        display = [brain calculate];
    }
    else if ([string isEqualToString:@"+"]) {
        display = [brain performOperator:Add];
    }
    else {
        int n = [string intValue];
        display = [brain appendOperand:n];
    }
    osd.text = [NSString stringWithFormat:@"%d", display];  
}

@end
