//
//  ContactViewController.h
//  tltworkshop
//
//  Created by leaf on 4/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactViewController : UITableViewController
{
    NSMutableArray* contacts;
}

@property (nonatomic, retain) NSMutableArray* contacts;

@end
