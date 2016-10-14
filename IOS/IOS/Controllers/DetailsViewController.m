//
//  DetailsViewController.m
//  IOS
//
//  Created by ilabadmin on 11/08/2016.
//  Copyright © 2016 strathmore. All rights reserved.
//

#import "DetailsViewController.h"
#import "Events.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

@synthesize event=_event;
@synthesize imgImage=_imgImage,lblName=_lbName,lblDescritpion=_lbDescritpion;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_imgImage setImage:[UIImage imageNamed:_event.image]];
    
    [_lbName setText:_event.name];
    
    _lbDescritpion.text =_event.desc;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
