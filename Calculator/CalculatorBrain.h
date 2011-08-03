//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Mark Gentzel on 8/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorBrain : NSObject {
@private
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
    
}
// handles getter/setter as properties
@property double operand;
// new demo - dot notation won't work when implementing this way - need the @property above - 
//- (void)setOperand:(double)aDouble;
- (double)performOperation:(NSString *)operation;

@end
