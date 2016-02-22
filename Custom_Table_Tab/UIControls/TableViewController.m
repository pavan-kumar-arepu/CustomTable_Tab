//
//  TableTableViewController.m
//  UIControls
//
//  Created by Pavankumar Arepu on 30/09/15.
//  Copyright (c) 2015 PPAM. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCellClassTableViewCell.h"

@interface TableViewController ()
{
    NSMutableArray *dataArray;
    TableViewCellClassTableViewCell *simpleTableCell;
}
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dataArray = [[NSMutableArray alloc]init];
    
    [dataArray addObject:@"1"];
    [dataArray addObject:@"2"];
    [dataArray addObject:@"3"];
    [dataArray addObject:@"4"];
    [dataArray addObject:@"5"];
    [dataArray addObject:@"6"];
    [dataArray addObject:@"7"];
    [dataArray addObject:@"8"];
    [dataArray addObject:@"9"];
    [dataArray addObject:@"10"];
    [dataArray addObject:@"11"];
    [dataArray addObject:@"12"];
    [dataArray addObject:@"13"];
    [dataArray addObject:@"14"];


    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
   // [self.tableView setEditing:YES animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [dataArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"indexPath.row:%ld",(long)indexPath.row);
    
    simpleTableCell = [tableView dequeueReusableCellWithIdentifier:@"SimpleTableCell"];
    
    if (simpleTableCell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableViewCellClassTableViewCell" owner:self options:nil];
        simpleTableCell = [nib objectAtIndex:0];
    }
    
    simpleTableCell.detalLabelTextField.text = [NSString stringWithFormat:@"%@ Detail Text",[dataArray objectAtIndex:indexPath.row]];
                                                
    simpleTableCell.normalTextField.text = [NSString stringWithFormat:@"%@ TextLabel",[dataArray objectAtIndex:indexPath.row]];
    simpleTableCell.celImage.image = [UIImage imageNamed:@"image.png"];
    
//    static NSString *simpleTableIdentifier = @"SimpleTableCell";
//    
//    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//    if (cell == nil)
//    {
//        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
//        cell = [nib objectAtIndex:0];
//    }
    
    
    
//    cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld Detail Text",(long)indexPath.row];
//    cell.textLabel.text = [NSString stringWithFormat:@"%ld TextLabel",(long)indexPath.row];
//    
    return simpleTableCell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"SampleTableViewCell: %@",simpleTableCell);
   
    NSString *alertMessage = [NSString stringWithFormat:@"Clicked on %dth Cell",indexPath.row];
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert title" message:alertMessage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:ok];
    
    [self presentViewController:alertController animated:YES completion:nil];

}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@"SampleTableViewCell: %@",simpleTableCell);
    
   
    
//    [dataArray removeObjectAtIndex:indexPath.row];
//    [self.tableView reloadData];
//    
//     [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationTop];
    
    
//    
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        // Do whatever data deletion you need to do...
//        // Delete the row from the data source
//        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationTop];
//    }
    
    
    
        return UITableViewCellEditingStyleDelete;
}

/*
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tv commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"SampleTableViewCell: %@",simpleTableCell);

    [dataArray removeObjectAtIndex:indexPath.row];
    [self.tableView reloadData];
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Do whatever data deletion you need to do...
        // Delete the row from the data source
        [tv deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationTop];
    }
}
 
 */
/*

-(NSArray *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIFont *font1 = [UIFont fontWithName:@"Arial" size:30.0f];
    NSDictionary *dict1 = @{NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle),
                            NSFontAttributeName:font1};
    
    NSMutableAttributedString *attString = [[NSMutableAttributedString alloc] init];
    [attString appendAttributedString:[[NSAttributedString alloc] initWithString:@"\nLove\n" attributes:dict1]];
    
    
    UITableViewRowAction *button = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:[attString string] handler:^(UITableViewRowAction *action, NSIndexPath *indexPath)
                                    {
                                        NSLog(@"Action to perform with Button 1");
                                    }];
    button.backgroundColor = [UIColor greenColor];
   // button.title = @"Love";
    
    
    UIButton *deleteBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 80, 100)];
    deleteBtn.titleLabel.font = [UIFont fontWithName:@"Helvetica" size:40.0];
    
//    [self setAttributedTitle:attString forState:UIControlStateNormal];
    
    
    //arbitrary color
    
//    UITableViewRowAction *button2 = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"Button 2" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath)
//                                     {
//                                         NSLog(@"Action to perform with Button2!");
//                                     }];
   // button2.backgroundColor = [UIColor blueColor]; //arbitrary color
    
   // return @[button, button2];
    
    return @[button];
}
//
//-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
//   
//    NSDictionary *attrDict = [NSDictionary dictionaryWithObject:[UIFont fontWithName:@"Helvetica" size:20.0] forKey:NSFontAttributeName];
//    NSMutableAttributedString *AattrString = [[NSMutableAttributedString alloc] initWithString:@"Remove" attributes: attrDict];
//
//    NSString *str = [AattrString string];
//    return str;
//}

 */


-(void)tableView:(UITableView *)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath
{
    [dataArray removeObjectAtIndex:indexPath.row];
    [self.tableView reloadData];
    
    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationTop];
  
}

@end
