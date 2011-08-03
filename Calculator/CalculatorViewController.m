//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Mark Gentzel on 8/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

- (CalculatorBrain *)brain
{
    if (!brain) brain = [[CalculatorBrain alloc] init];
    return brain;
}


- (IBAction)digitPressed:(UIButton *)sender
{
    // orig assignment - NSString *digit = [[sender titleLabel] text];
    NSString *digit = sender.titleLabel.text;
    int iDig = [digit intValue];
    NSLog(@"The digit is %d.", iDig);
    
    if (userIsInTheMiddleOfTypingANumber) {
       // orig assignment - [display setText:[[display text] stringByAppendingString:digit]];
        display.text = [display.text stringByAppendingString:digit];
    }
    else
    {
        // orig assignment - [display setText:digit];
        display.text = digit;
        userIsInTheMiddleOfTypingANumber = YES;
    }
}

- (IBAction)operationPressed:(UIButton *)sender
{
    if (userIsInTheMiddleOfTypingANumber) {
        // original assignment
        //[[self brain] setOperand:[[display text] doubleValue]];
        // new impl in demo - won't work with the setOperand method in .h - error - need @property there
        // [self brain].operand = [[display text] doubleValue];
        [self brain].operand = [display.text doubleValue];
        userIsInTheMiddleOfTypingANumber = NO;
    }
    // orig assignment - NSString *operation  =  [[sender titleLabel] text];
    NSString *operation = sender.titleLabel.text;
    double result = [[self brain] performOperation:operation];
    // orig assignment - [display setText:[NSString stringWithFormat:@"%g", result]];
    display.text = [NSString stringWithFormat:@"%g", result];
    // output to console example: NSLog(@"The answer to %@, the universe and everything is %d.", @"life", 42);
}

// Auto generated - commented out for first assignment
/*
- (void)dealloc
{
    [super dealloc];
}
 */
// Auto generated - commented out for first assignment
/*
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
*/

// Auto generated - commented out for first assignment
//#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

// Auto generated - commented out for first assignment
/*
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
*/
// Auto generated - commented out for first assignment
/*
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */

@end
