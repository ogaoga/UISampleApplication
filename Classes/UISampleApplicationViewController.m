//
//  UISampleApplicationViewController.m
//  UISampleApplication
//
//  Created by ogaoga on 10/10/19.
//  Copyright ogaoga.org 2010. All rights reserved.
//

#import "UISampleApplicationViewController.h"

@implementation UISampleApplicationViewController

/**
 * スイッチが切り替わったときの処理。
 * スイッチの値に応じて、他の UI パーツを有効／無効に。
 */
- (IBAction)switchValueChanged:(UISwitch*)sender {
	// sender には、UISwitch のオブジェクトが渡される。
	textField.enabled = sender.on;
	slider.enabled = sender.on;
	button.enabled = sender.on;
}

/**
 * クリアボタンが押されたときの処理。
 * 値を 0.00 に。
 */
- (IBAction)clearButtonPressed:(UIButton*)sender {
	// スライダーの値を 0.00 に。
	slider.value = 0.00;
	// テキストフィールドの文字列を 0.00 に。
	textField.text = @"0.00";
}

/**
 * スライドバーを動かしたときの処理。
 * テキストフィールドの値を変更。
 */
- (IBAction)sliderValueChanged:(UISlider*)sender {
	// sender には UISlider のオブジェクトが渡される。
	// sender.value で現在の値を取得して、文字列に変換した上で
	// テキストフィールドにセットしている。
	textField.text = [NSString stringWithFormat:@"%f", sender.value];
}

/**
 * テキストフィールドの値が変わったときの処理。
 * スライダーの位置を変更。
 */
- (IBAction)textFieldEditingChanged:(UITextField*)sender {
	// テキストフィールドの文字列を数値に変換して、
	// スライダーにセットしている。
	slider.value = [sender.text floatValue];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
