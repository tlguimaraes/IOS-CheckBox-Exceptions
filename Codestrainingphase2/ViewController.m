//
//  ViewController.m
//  Codestrainingphase2
//
//  Created by Thiago Guimaraes on 1/22/16.
//  Copyright © 2016 Thiago Guimaraes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize checkBoxButton;
@synthesize checkBoxButtonMin;
@synthesize checkBoxButtonDiv;
@synthesize checkBoxButtonMulti;
@synthesize display;
@synthesize fieldNumber1;
@synthesize fieldNumber2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    checked = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)checkButton:(id)sender {
    
    if(!checked)
    {
        [checkBoxButton setImage:[UIImage imageNamed: @"checkboxMarked.png"] forState:UIControlStateNormal];
        checked=YES;
        
        //NEED TO CHANGE MIN AS BLANK
        [checkBoxButtonMin setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkecMin=NO;
        
        //NEED TO CHANGE MULTI AS BLANK
        [checkBoxButtonMulti setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkedMultiply=NO;
        
        // NEED TO CHANGE DIV AS BLANK
        [checkBoxButtonDiv setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkedDivision=NO;
        
        //CALCULATION PIECE
        float x = [fieldNumber1.text floatValue];
        float y = [fieldNumber2.text floatValue];
        float z= x+y;
        NSString *result = [NSString stringWithFormat:@"%f",z];
        display.text=result;
        NSLog(@"z = %f", z);
        
    }else if(checked){
        [checkBoxButton setImage:[UIImage imageNamed: @"checkboxBlank.png"] forState:UIControlStateNormal];
        checked=NO;
        
    }

}
- (IBAction)checkButtonMin:(id)sender {
    
    if(!checkecMin){
    
        [checkBoxButtonMin setImage:[UIImage imageNamed:@"checkboxMarked.png"] forState:UIControlStateNormal];
        checkecMin=YES;
        
        //NEED TO CHANGE ADD AS BLANK
        [checkBoxButton setImage:[UIImage imageNamed: @"checkboxBlank.png"] forState:UIControlStateNormal];
        checked=NO;
        
        //NEED TO CHANGE MULTI AS BLANK
        [checkBoxButtonMulti setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkedMultiply=NO;
        
        // NEED TO CHANGE DIV AS BLANK
        [checkBoxButtonDiv setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkedDivision=NO;
        
        //CALCULATION PIECE
        float x = [fieldNumber1.text floatValue];
        float y = [fieldNumber2.text floatValue];
        float z= x-y;
        NSString *result = [NSString stringWithFormat:@"%f",z];
        display.text=result;
        NSLog(@"z = %f", z);
        
    }else if(checkecMin){
        [checkBoxButtonMin setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkecMin=NO;
    }
    
    
    
}
- (IBAction)checkButtonMulti:(id)sender {
    if (!checkedMultiply) {
        [checkBoxButtonMulti setImage:[UIImage imageNamed:@"checkboxMarked.png"] forState:UIControlStateNormal];
        checkedMultiply=YES;
        
        //NEED TO CHANGE ADD AS BLANK
        [checkBoxButton setImage:[UIImage imageNamed: @"checkboxBlank.png"] forState:UIControlStateNormal];
        checked=NO;
        
        //NEED TO CHANGE MIN AS BLANK
        [checkBoxButtonMin setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkecMin=NO;
        
        // NEED TO CHANGE DIV AS BLANK
        [checkBoxButtonDiv setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkedDivision=NO;

        //CALCULATION PIECE
        float x = [fieldNumber1.text floatValue];
        float y = [fieldNumber2.text floatValue];
        float z= x*y;
        NSString *result = [NSString stringWithFormat:@"%f",z];
        display.text=result;
        NSLog(@"z = %f", z);
        
    }else if (checkedMultiply) {
        [checkBoxButtonMulti setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkedMultiply=NO;
    }
    
}
- (IBAction)checkButtonDiv:(id)sender {

    if (!checkedDivision) {
        [checkBoxButtonDiv setImage:[UIImage imageNamed:@"checkboxMarked.png"] forState:UIControlStateNormal];
        checkedDivision=YES;
        
        //NEED TO CHANGE ADD AS BLANK
        [checkBoxButton setImage:[UIImage imageNamed: @"checkboxBlank.png"] forState:UIControlStateNormal];
        checked=NO;
        
        //NEED TO CHANGE MIN AS BLANK
        [checkBoxButtonMin setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkecMin=NO;
        //NEED TO CHANGE MULTI AS BLANK
        [checkBoxButtonMulti setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkedMultiply=NO;
        
        
        //CALCULATION PIECE
        float x = [fieldNumber1.text floatValue];
        float y = [fieldNumber2.text floatValue];
        float z= x/y;
        NSString *result = [NSString stringWithFormat:@"%f",z];
        display.text=result;
        NSLog(@"z = %f", z);

        
        
    }else if(checkedDivision){
        [checkBoxButtonDiv setImage:[UIImage imageNamed:@"checkboxBlank.png"] forState:UIControlStateNormal];
        checkedDivision=NO;
    }
    
}
@end
