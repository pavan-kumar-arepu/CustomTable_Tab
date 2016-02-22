//
//  IOSTableViewController.m
//  UIControls
//
//  Created by Pavankumar Arepu on 01/10/15.
//  Copyright (c) 2015 PPAM. All rights reserved.
//

#import "IOSTableViewController.h"

@interface IOSTableViewController ()

@end

@implementation IOSTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 20;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"HeaderTitle";
}// fixed font style. use custom view (UILabel) if you want something different

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
   return @"FooterTitle";
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"indexPath.row:%ld",(long)indexPath.row);

    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    // Configure the cell...
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld Detail Text",(long)indexPath.row];
    
    return cell;
}

#pragma mark - Table view Delegate Methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Row: %ld in Section :%ld",(long)indexPath.row, (long)indexPath.section);
    
//    NSString *rowSelecteValue = [NSString stringWithFormat:@"%d Row Selected",indexPath.row];
//    
//    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Alert" message:rowSelecteValue delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
//    
//    [alertView show];
    
//    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert title" message:@"Alert message" preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction* accept = [UIAlertAction actionWithTitle:@"Accept" style:UIAlertActionStyleDefault handler:nil];
//    UIAlertAction* decline = [UIAlertAction actionWithTitle:@"Decline" style:UIAlertActionStyleDefault handler:nil];
//
//      UIAlertAction* decideLater = [UIAlertAction actionWithTitle:@"Remind Me Later" style:UIAlertActionStyleDefault handler:nil];
//    
//    
//    [alertController addAction:accept];
//    [alertController addAction:decline];
//    [alertController addAction:decideLater];
//
//
//    [self presentViewController:alertController animated:YES completion:nil];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
