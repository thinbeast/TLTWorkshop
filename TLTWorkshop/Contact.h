//
//  Contact.h
//  tltworkshop
//
//  Created by leaf on 4/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Contact : NSObject {
@private
    NSNumber* contactId;
    NSString* firstName;
    NSString* lastName;
    NSString* address;
    NSString* phone;
    NSString* mobile;
    NSString* email;
}

@property (strong) NSNumber* contactId;
@property (strong) NSString* firstName;
@property (strong) NSString* lastName;
@property (strong) NSString* address;
@property (strong) NSString* phone;
@property (strong) NSString* mobile;
@property (strong) NSString* email;

@end
