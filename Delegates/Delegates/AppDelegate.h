//
//  AppDelegate.h
//  Delegates
//
//  Created by Andreea Nitescu on 11/01/2017.
//  Copyright © 2017 Dev - Deea Nitescu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

