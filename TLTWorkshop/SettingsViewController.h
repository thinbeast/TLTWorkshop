//
//  SettingsViewController.h
//  TLTWorkshop
//
//  Created by Richard Han on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController
{
    IBOutlet UISwitch*    showContactAtStartup;
}

-(IBAction)   showContactsAtStartUpChanged:(id) sender;
@end
