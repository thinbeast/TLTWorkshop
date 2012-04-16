//
//  TLTCalculatorBrain.h
//  TLTWorkshop
//
//  Created by Ronnie on 4/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculatorBrain.h"

@interface TLTCalculatorBrain : NSObject<CalculatorBrain>

- (int) appendOperand:(int) digit;
- (int) performOperator:(enum Operator) op;
- (int) calculate;

@property (nonatomic, assign) int operand;

@end
