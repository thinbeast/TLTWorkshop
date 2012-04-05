//
//  ContactDetailsViewController.h
//  tltworkshop
//
//  Created by leaf on 4/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"

@interface ContactDetailsViewController : UITableViewController
{
@private
    Contact* person;
}

@property (strong) Contact* person;

- (id)initWithContact:(Contact*)aPerson;

@end
