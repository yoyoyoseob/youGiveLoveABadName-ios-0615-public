//
//  FISViewController.m
//  youGiveLoveABadName
//
//  Created by Joe Burgess on 7/9/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *bonJovi;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeightConstraint;
@property (nonatomic) BOOL isExpanded;
@property (weak, nonatomic) IBOutlet UIButton *expandButton;

- (IBAction)expand:(id)sender;

@end

@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[self.expandButton layer] setBorderWidth:1.0f];
    [[self.expandButton layer] setBorderColor:[UIColor blackColor].CGColor];
    [[self.expandButton layer] setCornerRadius:4.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)expand:(id)sender
{
    if (!(self.isExpanded))
    {
        [UIView animateKeyframesWithDuration:1.0 delay:0.0 options:0 animations:^{
            
            [UIView addKeyframeWithRelativeStartTime:0.0 relativeDuration:0.2 animations:^{
                self.imageHeightConstraint.constant = -10;
                [self.view layoutIfNeeded];
            }];
            
            [UIView addKeyframeWithRelativeStartTime:0.2 relativeDuration:0.6 animations:^{
                self.imageHeightConstraint.constant = 395;
                [self.view layoutIfNeeded];
            }];
            
            [UIView addKeyframeWithRelativeStartTime:0.8 relativeDuration:0.2 animations:^{
                self.imageHeightConstraint.constant = 385;
                [self.view layoutIfNeeded];
            }];
            
        } completion:nil];
    }

    else
    {
        [UIView animateKeyframesWithDuration:1.0 delay:0.0 options:0 animations:^{
            
            [UIView addKeyframeWithRelativeStartTime:0.0 relativeDuration:0.2 animations:^{
                self.imageHeightConstraint.constant = 400;
                [self.view layoutIfNeeded];
            }];
            
            [UIView addKeyframeWithRelativeStartTime:0.2 relativeDuration:0.6 animations:^{
                self.imageHeightConstraint.constant = -20;
                [self.view layoutIfNeeded];
            }];
            
            [UIView addKeyframeWithRelativeStartTime:0.8 relativeDuration:0.2 animations:^{
                self.imageHeightConstraint.constant = 0;
                [self.view layoutIfNeeded];
            }];
            
        } completion:nil];
    }
    
    self.isExpanded = !self.isExpanded;
}

@end
