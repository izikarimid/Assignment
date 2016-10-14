//
//  MainViewController.m
//  IOS
//
//  Created by ilabadmin on 11/08/2016.
//  Copyright © 2016 strathmore. All rights reserved.
//

#import "MainViewController.h"
#import "Events.h"
#import "DetailsViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

{
    NSArray *event;
    //NSArray *thumbnails;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Events *event1=[Events new];
    event1.name=@"Bohemian Party";
    event1.desc=@"Bohemian event of the year on 23rd April";
    event1.image=@"ev1.jpg";
    
    Events *event2=[Events new];
    event2.name=@"Beach Busta";
    event2.desc=@"Beach Party... Entrance Free!!!";
    event2.image=@"ev2.jpg";
    
    
    Events *event3=[Events new];
    event3.name=@"Inception";
    event3.desc=@"Avicii and DJ Aoki";
    event3.image=@"ev3.jpg";
    
    Events *event4=[Events new];
    event4.name=@"Summer Camp";
    event4.desc=@"Summer is here! Get ready for summer time of the year!!";
    event4.image=@"ev4.jpg";
    
    event = [NSMutableArray arrayWithObjects:event1,event2,event3,event4,nil];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [event count];
    
    
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    
    
    static NSString *cellIdentifier= @"TableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    
    if (cell == nil){
        
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
        
        
        
    }
    Events *evt =((Events *)event [indexPath.row]);
    
    cell.textLabel.text =evt.name;
    [cell.detailTextLabel setText:evt.desc];
    cell.imageView.image=[UIImage imageNamed:evt.image];
    
    //cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    
    
    return cell;
    
    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    
    if([segue.identifier isEqualToString:@"showDetails"]){
        
        NSInteger index=[self.myTableView indexPathForSelectedRow].row;
        
        // NSLog(@"%d",[self.myTableView indexPathForSelectedRow].row);
        
        
        [(DetailsViewController *) segue.destinationViewController setEvent:
         
         [self objectInListAtIndex:index] ];
        
    }
    
}

-(Events *) objectInListAtIndex: (NSUInteger) index{
    
    
    
    return [event objectAtIndex:index];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
