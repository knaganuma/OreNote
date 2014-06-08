//
//  OreNoteDetailViewController.h
//  OreNote
//
//  Created by KENSUKE on H26/06/08.
//  Copyright (c) 平成26年 Kensuke Naganuma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OreNoteDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
