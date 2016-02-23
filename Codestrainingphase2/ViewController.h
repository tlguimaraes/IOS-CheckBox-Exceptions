//
//  ViewController.h
//  Codestrainingphase2
//
//  Created by Thiago Guimaraes on 1/22/16.
//  Copyright © 2016 Thiago Guimaraes. All rights reserved.
//
 
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    BOOL checked;
    BOOL checkecMin;
    BOOL checkedMultiply;
    BOOL checkedDivision;
    
}
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton;
- (IBAction)checkButton:(id)sender;



@property (weak, nonatomic) IBOutlet UIButton *checkBoxButtonMin;
- (IBAction)checkButtonMin:(id)sender;



@property (weak, nonatomic) IBOutlet UIButton *checkBoxButtonMulti;
- (IBAction)checkButtonMulti:(id)sender;




@property (weak, nonatomic) IBOutlet UIButton *checkBoxButtonDiv;
- (IBAction)checkButtonDiv:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *display;
@property (weak, nonatomic) IBOutlet UITextField *fieldNumber1;
@property (weak, nonatomic) IBOutlet UITextField *fieldNumber2;


@end

