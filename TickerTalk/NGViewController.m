//
//  NGViewController.m
//  TickerTalk
//
//  Created by Neetesh Gupta on 26/12/12.
//  Copyright (c) 2012 Neetesh Gupta. All rights reserved.
//

#import "NGViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface NGViewController ()

@end

@implementation NGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_inputBox release];
    [super dealloc];
}

- (IBAction)tickerit:(id)sender {
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NGScrollViewController *destination =
    [segue destinationViewController];
    
    destination.labelText = _inputBox.text;
}

-(IBAction)returned:(UIStoryboardSegue *)segue {
    //_inputBox.text = @"Returned from Scene 1";
}

@end
