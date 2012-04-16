//
//  ContactViewController.h
//  tltworkshop
//
//  Created by leaf on 4/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FMDatabase;

@interface ContactViewController : UITableViewController
{
    NSMutableArray* contacts;
    FMDatabase* contactsDb;
}

@property (nonatomic, retain) NSMutableArray* contacts;
@property (nonatomic, retain) FMDatabase* contactsDb;


@end
