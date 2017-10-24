//
//  SecondViewController.m
//  Delegates
//
//  Created by Andreea Nitescu on 11/01/2017.
//  Copyright © 2017 Dev - Deea Nitescu. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTouchChangeLabel:(id)sender {
    [self.delegate changeLabel];
}


- (IBAction)didTouchChangeLabelColor:(id)sender {
    if ([self.delegate respondsToSelector:@selector(changeLabelColor)]) {
        [self.delegate changeLabelColor];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
