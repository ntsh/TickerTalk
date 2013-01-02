//
//  NGViewController.h
//  TickerTalk
//
//  Created by Neetesh Gupta on 26/12/12.
//  Copyright (c) 2012 Neetesh Gupta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NGScrollViewController.h"

@interface NGViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextView *inputBox;
- (IBAction)tickerit:(id)sender;

@end
