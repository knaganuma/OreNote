//
//  OreNoteAppDelegate.h
//  OreNote
//
//  Created by KENSUKE on H26/06/08.
//  Copyright (c) 平成26年 Kensuke Naganuma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OreNoteAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
