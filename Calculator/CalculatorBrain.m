//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Mark Gentzel on 8/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"

// allows private @properties or methods - the '()' is the operator needed
@interface CalculatorBrain()
@property double newOperand;
// implemented below - after the method it calls
- (void)doSomethingPrivate;
@end


@implementation CalculatorBrain
@synthesize operand;
@synthesize newOperand;
// orig assignment - will use @synthesize instead
//- (void)setOperand:(double)aDouble
//{
//    operand = aDouble;
//}



// private
- (void)performWaitingOperation
{
    if ([@"+" isEqual:waitingOperation]) {
        operand = waitingOperand + operand;
    }
    else if ([@"*" isEqual:waitingOperation])
    {
        operand = waitingOperand * operand;
    }
    else if ([@"-" isEqual:waitingOperation])
    {
        operand = waitingOperand - operand;
    }
    else if ([@"/" isEqual:waitingOperation])
    {
        if (operand) {
            operand = waitingOperand * operand;
        }
        
    }
}

- (double)performOperation:(NSString *)operation
{
    if ([operation isEqual:@"sqrt"] && operand >= 0) {
        operand = sqrt(operand);
    } 
    else if ([@"+/-" isEqual:operation])
    {
        operand = - operand;
    }
    else 
    {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
        
    }
    
    
    return operand;
}

// if this is implemented before the method it calls the compiler complains about not finding it
- (void)doSomethingPrivate
{
    [self performWaitingOperation];
}

@end
