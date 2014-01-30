//
//  thetipViewController.m
//  TipCalculator
//
//  Created by Tyler Stout on 1/29/14.
//  Copyright (c) 2014 Tyler Stout. All rights reserved.
//

#import "thetipViewController.h"

@interface thetipViewController ()
@end

@implementation thetipViewController
- (IBAction)Price:(UITextField *)sender {
}

- (IBAction)Tip:(UITextField *)sender {
}

- (IBAction)calculate:(id)sender {
    
    float p = [Price.text floatValue];
    float t = [Tip.text floatValue];
    float amount = (p * t)/100;
    
    NSString *msg = [NSString stringWithFormat:@"Leave a tip of $%.2f", amount];
   
    UIAlertView *alert = [[[UIAlertView alloc]
                           initWithTitle:@"Tip"
                           message:msg
                           delegate: self
                           cancelButtonTitle: @"OK"
                           otherButtonTitles: nil];
                          
                          [alert show];
                         
                          
}

@end
