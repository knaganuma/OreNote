//
//  OreNoteMasterViewController.h
//  OreNote
//
//  Created by KENSUKE on H26/06/08.
//  Copyright (c) 平成26年 Kensuke Naganuma. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface OreNoteMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
