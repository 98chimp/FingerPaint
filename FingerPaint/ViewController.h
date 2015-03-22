//
//  ViewController.h
//  FingerPaint
//
//  Created by Shahin on 2015-03-20.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FingerDraw.h"
#import "Canvas.h"

@interface ViewController : UIViewController<FingerDrawDelegate>

@property (strong, nonatomic) IBOutlet UISlider *changeStroke;
@property (strong, nonatomic) IBOutlet UIButton *clearCanvas;
@property (strong, nonatomic) IBOutlet UIButton *redColor;
@property (strong, nonatomic) IBOutlet UIButton *greenColor;
@property (strong, nonatomic) IBOutlet UIButton *yellowColor;
@property (strong, nonatomic) IBOutlet UIButton *blueColor;
@property (strong, nonatomic) IBOutlet UIButton *blackColor;
//@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *fingerPaint;
@property (strong, nonatomic) FingerDraw *fingerDraw;
@property (strong, nonatomic) Canvas *canvas;

- (IBAction)redColorPicker:(UIButton *)sender;
- (IBAction)greenColorPicker:(UIButton *)sender;
- (IBAction)yellowColorPicker:(UIButton *)sender;
- (IBAction)blueColorPicker:(UIButton *)sender;
- (IBAction)blackColorPicker:(UIButton *)sender;
- (IBAction)clearCanvasButton:(UIButton *)sender;
- (IBAction)strokePicker:(UISlider *)sender;

@end

