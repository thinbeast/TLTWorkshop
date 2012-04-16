//
//  TLTCalculatorBrain.m
//  TLTWorkshop
//
//  Created by Ronnie on 4/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TLTCalculatorBrain.h"

enum State
{
    kStart,
    kDigit,
    kOperator,
    kCalculate
};

@interface TLTCalculatorBrain ()
{
    enum Operator _operator;
    int _operand;
    int _register;
    enum State _state;
}

- (void) calculateGuts;

@end

@implementation TLTCalculatorBrain

- (id) init
{
    self = [super init];
    if (self) {
        _operand = 0;
        _register = 0;
        _operator = kNoop;
        _state = kStart;
    }
    
    return self;
}

- (int) operand
{
    return _operand;
}

- (void) setOperand:(int)operand
{
    _operand = 0;
    [self appendOperand:operand];
}

- (int) appendOperand:(int) digit
{
    switch (_state) {
        case kDigit:
            _operand = _operand * 10 + digit;
            break;
        case kCalculate:
            _operator = kNoop;
            /* Fall through */
        default:
            _operand = digit;
            break;
    }

    _state = kDigit;
    return _operand;
}

- (int) performOperator:(enum Operator) op
{
    switch (_state)
    {
        case kDigit:
            [self calculateGuts];
            break;
        default:
            break;
    }

    _operand = 0;
    _operator = op;
    _state = kOperator;

    return _register;
}

- (void) calculateGuts
{
    switch (_operator) {
        case kAdd:
            _register = _register + _operand;
            break;
        case kMinus:
            _register = _register - _operand;
            break;
        default:
            _register = _operand;
            break;
    }
}

- (int) calculate
{
    [self calculateGuts];
    
    _state = kCalculate;
    
    return _register;
}

@end
