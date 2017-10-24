//
//  FirstViewController.m
//  Delegates
//
//  Created by Andreea Nitescu on 11/01/2017.
//  Copyright © 2017 Dev - Deea Nitescu. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController () <UpdateLabelProtocol>

@property (nonatomic, weak) IBOutlet UILabel *label;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - actions

- (IBAction)didTouchGoToSecondViewController:(id)sender {
    [self performSegueWithIdentifier:@"goToNextScreen" sender:self];
}

#pragma mark - update label protocol

- (void)changeLabel {
    self.label.text = @"Update text for label";
}

- (void)changeLabelColor {
    self.label.textColor = [UIColor greenColor];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[SecondViewController class]]) {
        SecondViewController *secondVC = segue.destinationViewController;
        secondVC.delegate = self;
    }
 
}

@end
