//
//  TLTViewController.m
//  TLTWorkshop
//
//  Created by Ronnie on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TLTViewController.h"
#import "TLTCalculatorBrain.h"

@interface TLTViewController () <UITextFieldDelegate>
{
    TLTCalculatorBrain* brain;
}

@end

@implementation TLTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    brain = [TLTCalculatorBrain new];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
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
    UIButton* button = (UIButton*)sender;
    NSString* string = button.titleLabel.text;
    int display = 0;
    if ([string isEqualToString:@"="]) {
        display = [brain calculate];
    }
    else if ([string isEqualToString:@"+"]) {
        [osd resignFirstResponder];
        display = [brain performOperator:kAdd];
    }
    else if ([string isEqualToString:@"-"]) {
        [osd resignFirstResponder];
        display = [brain performOperator:kMinus];
    }
    else {
        [osd resignFirstResponder];
        int n = [string intValue];
        display = [brain appendOperand:n];
    }
    osd.text = [NSString stringWithFormat:@"%d", display];  
}

#pragma Mark - TextDelegate

- (BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSCharacterSet *nonNumberSet = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    return [string isEqualToString:[string stringByTrimmingCharactersInSet:nonNumberSet]];
}

- (void) textFieldDidEndEditing:(UITextField *)textField
{
    int val = [textField.text intValue];
    brain.operand = val;
    osd.text = [NSString stringWithFormat:@"%d", val];
}

@end
