//
//  TableViewCellClassTableViewCell.m
//  UIControls
//
//  Created by Pavankumar Arepu on 18/10/2015.
//  Copyright © 2015 PPAM. All rights reserved.
//

#import "TableViewCellClassTableViewCell.h"

@implementation TableViewCellClassTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//
//- (void)willTransitionToState:(UITableViewCellStateMask)state
//{
//    [super willTransitionToState:state];
//    if ((state & UITableViewCellStateShowingDeleteConfirmationMask) == UITableViewCellStateShowingDeleteConfirmationMask)
//    {
//        for (UIView *subview in self.subviews)
//        {
//            if ([NSStringFromClass([subview class]) isEqualToString:@"UITableViewCellDeleteConfirmationControl"])
//            {
//                UIImageView *deleteBtn = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 80, 100)];
//                [deleteBtn setImage:[UIImage imageNamed:@"delete-button.png"]];
//                [[subview.subviews objectAtIndex:0] addSubview:deleteBtn];
//                
//                UIView *deleteButtonView = (UIView *)[subview.subviews objectAtIndex:0];
//                deleteButtonView.backgroundColor = [UIColor greenColor];
//            }
//        }
//    }
//}



- (void)layoutSubviews
{
    [super layoutSubviews];
    for (UIView *subview in self.subviews) {
        //iterate through subviews until you find the right one...
        for(UIView *subview2 in subview.subviews){
            
            NSDictionary *attrDict = [NSDictionary dictionaryWithObject:[UIFont fontWithName:@"Helvetica" size:40.0] forKey:NSFontAttributeName];
            if ([NSStringFromClass([subview2 class]) isEqualToString:@"UITableViewCellDeleteConfirmationView"])
            {
                //your color
              //  ((UIView*)[subview2.subviews firstObject]).backgroundColor=[UIColor blueColor];
            }else if ([NSStringFromClass([subview2 class]) isEqualToString:@"_UITableViewCellActionButton"])
            {
           ((UIView*)[subview2.subviews firstObject]).backgroundColor=[UIColor clearColor];

                [((UIView*)[subview2.subviews firstObject]).layer setValue:[UIFont fontWithName:@"Helvetica" size:40.0] forKeyPath:NSFontAttributeName];
                
                
                UIButton *deleteBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 80, 100)];
                deleteBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica" size:40.0];
                
                [[subview.subviews objectAtIndex:0] addSubview:deleteBtn];
                
                
                
             //   [((UIView*)[subview2.subviews firstObject]).layer setValuesForKeysWithDictionary:attrDict];
                [subview bringSubviewToFront:subview2];
            }
        }
    }
}


/*
-(void)willTransitionToState:(UITableViewCellStateMask)state
{
    CGRect f;
    
    
    if ((state & UITableViewCellStateShowingDeleteConfirmationMask) == UITableViewCellStateShowingDeleteConfirmationMask) {
        if (!_deleteButton) {
            _deleteButton = [MPButton buttonWithType:MPButtonTypeAlert withTitle:NSLocalizedString(@"Delete",@"Delete")];
            [[_deleteButton titleLabel] setFont:[[UIFont buttonFont] changeFontSizeBy:-2]];
            
            [_deleteButton addTarget:self action:@selector(delete:) forControlEvents:UIControlEventTouchUpInside];
            
            [self addSubview:_deleteButton];
        }
        
        f = RBRectCenterPositionY([_deleteButton frame], CGRectGetHeight([self frame]));
        f.origin.x = CGRectGetWidth([self frame]);
        [_deleteButton setFrame:f];
        
        f.origin.x = CGRectGetMaxX([self frame]) - [UIScreen tableContentPadding] - f.size.width;
        
        _isDeleting = NO;
        
    } else {
        [super willTransitionToState:state];
        
        if (_deleteButton) {
            f = [_deleteButton frame];
            if (_isDeleting) {
                alpha = 0.0f;
            } else {
                f.origin.x = CGRectGetWidth([self frame]);
            }
        }
    }
    
    
    if (_deleteButton) {
        [UIView animateWithDuration:0.3f
                         animations:^{
                             [_deleteButton setFrame:f];
                             [_deleteButton setAlpha:alpha];
                         }];
    }
    
*/

@end
