//
//  NormalViewController.h
//  UIControls
//
//  Created by Pavankumar Arepu on 22/02/2016.
//  Copyright © 2016 PPAM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NormalViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *normalTableView;


@end
