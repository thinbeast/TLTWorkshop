//
//  StupidBrain.m
//  TLTWorkshop
//
//  Created by SWD on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RandomBrain.h"

@implementation RandomBrain

- (int) appendOperand:(int) digit
{
    srand(time(NULL));
    return (rand() % 10000);
}

- (int) performOperator:(enum Operator) op
{
    srand(time(NULL));
    return (rand() % 10000);
}

- (int) calculate
{
    srand(time(NULL));
    return (rand() % 10000);
}

@end
