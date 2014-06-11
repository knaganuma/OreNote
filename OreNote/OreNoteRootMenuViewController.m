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
    /* 新しいwindowを開く
     これをやらないと(OreNoteMasterViewController *)navigationController.topViewController で
     OreNoteRootMenuViewController が controler に設定される。
     */
    UIViewController *nextView = [[OreNoteMasterViewController alloc] init];
    [navigationController pushViewController:nextView animated:YES];

    OreNoteMasterViewController *controller = (OreNoteMasterViewController *)navigationController.topViewController;
    controller.managedObjectContext = delegate.managedObjectContext;
    [self performSegueWithIdentifier:@"segueMaster" sender:self];
}
@end
