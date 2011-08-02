//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Mark Gentzel on 8/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorBrain : NSObject {
    
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
    
}

- (void)setOperand:(double)aDouble;
- (double)performOperation:(NSString *)operation;

@end
