//
//  NGScrollViewController.m
//  TickerTalk
//
//  Created by Neetesh Gupta on 26/12/12.
//  Copyright (c) 2012 Neetesh Gupta. All rights reserved.
//

#import "NGScrollViewController.h"

@interface NGScrollViewController ()

@end


@implementation NGScrollViewController

@synthesize labelText;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSString *newText;
    //newText =  [labelText stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    newText = [labelText stringByAppendingString:@"                                                   "];
    NSLog(@"%@",newText);
    NSLog(@"%@",labelText);
    [self scrolltext:newText];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrolltext:(NSString*)text
{
    [self.view setBackgroundColor:[UIColor blackColor]];
    // MarqueeLabel *continuousLabel2 = [[MarqueeLabel alloc] initWithFrame:CGRectMake(10, 100, self.view.frame.size.width+150, 100) rate:256.0f andFadeLength:16.0f ];
    MarqueeLabel *continuousLabel2 = [[MarqueeLabel alloc] initWithFrame:CGRectMake(10, 80, self.view.frame.size.width+150, 80) rate:256.0f andFadeLength:16.0f ];
    
    continuousLabel2.marqueeType = MLContinuous;
    //continuousLabel2.continuousMarqueeSeparator = @"          Your Favorite Tweets         ";
    continuousLabel2.animationCurve = UIViewAnimationOptionCurveLinear;
    continuousLabel2.numberOfLines = 1;
    continuousLabel2.opaque = NO;
    continuousLabel2.enabled = YES;
    continuousLabel2.shadowOffset = CGSizeMake(0.0, -1.0);
    continuousLabel2.textAlignment = UITextAlignmentLeft;
    continuousLabel2.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.000];
    continuousLabel2.backgroundColor = [UIColor clearColor];
    //continuousLabel2.backgroundColor =[UIColor blackColor];
    continuousLabel2.font = [UIFont fontWithName:@"Helvetica" size:40.000];
    //continuousLabel2.tapToScroll=YES;
    // continuousLabel2.text = @"\"Just gonna stand there and watch me burn.\" ~ Raavan    ||    My girlfriend once wanted me to go Dutch. I went to Amsterdam.     ||    Bucket list: Book tatkal tickets on IRCTC using internet explorer.    ||   EnglishedDialogues \"What's gonna happen to you now nigga?!\" = \"Ab tera kya hoga, Kaalia?!\"     ||    IRCTC has no reservations. Most secular website in the world.  || Before Facebook, only dogs 'Liked' Posts.  ";
    continuousLabel2.text = text;
    //[continuousLabel2 sizeToFit];
    [self.view addSubview:continuousLabel2];
    //NSLog(@"Output expected - %f",[continuousLabel2 animationDelay ]);
    [continuousLabel2 release];
    return;
}



@end
