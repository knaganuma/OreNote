//
//  OreNoteRootMenuViewController.m
//  OreNote
//
//  Created by KENSUKE on H26/06/08.
//  Copyright (c) 平成26年 Kensuke Naganuma. All rights reserved.
//

#import "OreNoteRootMenuViewController.h"

#import "OreNoteMasterViewController.h"
#import "OreNoteAppDelegate.h"

@interface OreNoteRootMenuViewController()

@end

@implementation OreNoteRootMenuViewController

- (IBAction)segueOreNoteMaster:(id)sender {
    OreNoteAppDelegate *delegate = (OreNoteAppDelegate *) [[UIApplication sharedApplication] delegate];
    UINavigationController *navigationController = (UINavigationController *)delegate.window.rootViewController;
    OreNoteMasterViewController *controller = (OreNoteMasterViewController *)navigationController.topViewController;
    controller.managedObjectContext = delegate.managedObjectContext;
    [self performSegueWithIdentifier:@"segueMaster" sender:self];
}
@end
