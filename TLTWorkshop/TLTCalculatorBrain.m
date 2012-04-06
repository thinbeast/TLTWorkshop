//
//  TLTCalculatorBrain.m
//  TLTWorkshop
//
//  Created by Ronnie on 4/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TLTCalculatorBrain.h"

@interface TLTCalculatorBrain ()
{
    enum Operator _operator;
    int _operand;
    int _register;
}

@end

@implementation TLTCalculatorBrain

- (id) init
{
    self = [super init];
    if (self) {
        _operand = 0;
        _register = 0;
        _operator = Noop;
    }
    
    return self;
}

- (int) appendOperand:(int) digit
{
    _operand = _operand * 10 + digit;
    return _operand;
}

- (int) performOperator:(enum Operator) op
{
    [self calculate];
        
    _operator = op;

    return _register;
}

- (int) calculate
{
    switch (_operator) {
        case Add:
            _register = _register + _operand;
            break;
        default:
            _register = _operand;
            break;
    }
    _operand = 0;
    _operator = Noop;
    
    return _register;
}

@end
