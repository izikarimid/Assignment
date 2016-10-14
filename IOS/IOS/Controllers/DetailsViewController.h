//
//  DetailsViewController.h
//  IOS
//
//  Created by ilabadmin on 11/08/2016.
//  Copyright © 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Events.h"

@interface DetailsViewController : UIViewController

@property (nonatomic, strong)Events *event;
@property(weak, nonatomic)IBOutlet UIImageView *imgImage;
@property(weak, nonatomic)IBOutlet UILabel *lblName;
@property(weak, nonatomic)IBOutlet UILabel *lblDescritpion;

@end
