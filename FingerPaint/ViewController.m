//
//  ViewController.m
//  FingerPaint
//
//  Created by Shahin on 2015-03-20.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.fingerDraw = [FingerDraw new];
    self.canvas = [Canvas new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)redColorPicker:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor redColor];
    NSLog(@"red");
}

- (IBAction)greenColorPicker:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor greenColor];
    NSLog(@"green");
}

- (IBAction)yellowColorPicker:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor yellowColor];
    NSLog(@"yellow");
}

- (IBAction)blueColorPicker:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor blueColor];
    NSLog(@"blue");
}

- (IBAction)blackColorPicker:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor blackColor];
    NSLog(@"black");
}

- (IBAction)clearCanvasButton:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor whiteColor];
    NSLog(@"white");
}

- (IBAction)strokePicker:(UISlider *)sender {
    self.canvas.strokeWidth = self.changeStroke.value;
    NSLog(@"%f",self.changeStroke.value);
}


@end
