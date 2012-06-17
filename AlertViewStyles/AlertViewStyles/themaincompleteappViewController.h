//
//  themaincompleteappViewController.h
//  AlertViewStyles
//
//  Created by Robert DeNicola on 6/17/12.
//  Copyright (c) 2012 Developmental Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface themaincompleteappViewController : UIViewController <UIAlertViewDelegate> {
    
    
    
    IBOutlet UITextField *Password;
    
    IBOutlet UITextField *Login_TextLabel;
    
    
}


- (IBAction)normalAlert;
-(IBAction)passwordAlert;
- (IBAction)normalTextAlert;
- (IBAction)secureTextAlert;


@end
