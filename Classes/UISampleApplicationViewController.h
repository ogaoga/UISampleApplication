//
//  UISampleApplicationViewController.h
//  UISampleApplication
//
//  Created by ogaoga on 10/10/19.
//  Copyright ogaoga.org 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UISampleApplicationViewController : UIViewController {
	IBOutlet UITextField *textField;
	IBOutlet UISlider *slider;
	IBOutlet UIButton *button;
}

- (IBAction)switchValueChanged:(UISwitch*)sender;
- (IBAction)clearButtonPressed:(UIButton*)sender;
- (IBAction)sliderValueChanged:(UISlider*)sender;
- (IBAction)textFieldEditingChanged:(UITextField*)sender;

@end

