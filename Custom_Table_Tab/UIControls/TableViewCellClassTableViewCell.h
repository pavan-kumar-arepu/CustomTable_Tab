//
//  TableViewCellClassTableViewCell.h
//  UIControls
//
//  Created by Pavankumar Arepu on 18/10/2015.
//  Copyright © 2015 PPAM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCellClassTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *detalLabelTextField;
@property (weak, nonatomic) IBOutlet UILabel *normalTextField;
@property (weak, nonatomic) IBOutlet UIImageView *celImage;
@property(nonatomic, readonly, strong) UILabel *titleLabel;

@end
