//
//  CalculatorBrain.h
//  TLTWorkshop
//
//  Created by SWD on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

enum Operator
{
    Noop,
    Add
};

@protocol CalculatorBrain <NSObject>

- (int) appendOperand:(int) digit;
- (int) performOperator:(enum Operator) op;
- (int) calculate;

@end