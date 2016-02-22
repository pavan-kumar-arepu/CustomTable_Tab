//
//  ViewController.m
//  UIControls
//
//  Created by Pavankumar Arepu on 30/09/15.
//  Copyright (c) 2015 PPAM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableDictionary *attrDict = [NSMutableDictionary dictionaryWithObject:[UIFont fontWithName:@"Arial" size:20.0] forKey:NSFontAttributeName];
    [attrDict setValue:[UIColor greenColor] forKey:NSForegroundColorAttributeName];
    
    NSMutableAttributedString *AattrString = [[NSMutableAttributedString alloc] initWithString:@"This is a" attributes: attrDict];
    
    _myLabel.attributedText = AattrString;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
