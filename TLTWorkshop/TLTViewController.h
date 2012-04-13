//
//  TLTViewController.h
//  TLTWorkshop
//
//  Created by Ronnie on 3/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TLTViewController : UIViewController
{
    IBOutlet UILabel* osd;
}

@property (nonatomic, copy) NSString *brainName;

-(IBAction)buttonPressed:(id)sender;

@end
