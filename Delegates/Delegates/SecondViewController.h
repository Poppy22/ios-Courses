//
//  SecondViewController.h
//  Delegates
//
//  Created by Andreea Nitescu on 11/01/2017.
//  Copyright © 2017 Dev - Deea Nitescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;

@protocol UpdateLabelProtocol <NSObject>

@required
- (void)changeLabel;

@optional
- (void)changeLabelColor;

@end

@interface SecondViewController : UIViewController

@property (nonatomic, weak) id <UpdateLabelProtocol> delegate;

@end
