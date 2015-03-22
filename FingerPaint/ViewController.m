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
//    UIPanGestureRecognizer *fingerPaint = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(didDraw:)];
//    fingerPaint.maximumNumberOfTouches = fingerPaint.minimumNumberOfTouches = 1;
//    [self.canvas addGestureRecognizer:fingerPaint];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//static CGPoint midpoint(CGPoint p0, CGPoint p1) {
//    return (CGPoint) {
//        (p0.x + p1.x) / 2.0,
//        (p0.y + p1.y) / 2.0
//    };
//}
//
//- (void)didDraw:(UIPanGestureRecognizer *)sender {
//    NSLog(@"start drawing");
//    
//    
//    CGPoint previousPoint;
//    CGPoint currentPoint = [sender locationInView:self.canvas];
//    CGPoint midPoint = midpoint(previousPoint, currentPoint);
//    [self.colorPicked setStroke];
//    self.fingerDraw.lineWidth = self.strokeWidth;
//    
//        
//    if (sender.state == UIGestureRecognizerStateBegan) {
//        [self.fingerDraw.curentPath moveToPoint:currentPoint];
//    }
//    else if (sender.state == UIGestureRecognizerStateChanged) {
//        [self.fingerDraw.curentPath addQuadCurveToPoint:midPoint controlPoint:previousPoint];
//        previousPoint = currentPoint;
//        [self.canvas setNeedsDisplay];
//    }
//    else if (sender.state == UIGestureRecognizerStateEnded) {
//        [self.fingerDraw.allPaths addObject:self.fingerDraw.curentPath];
//        self.fingerDraw.curentPath = [UIBezierPath new];
//    }
//}

- (IBAction)redColorPicker:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor redColor];
}

- (IBAction)greenColorPicker:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor greenColor];
}

- (IBAction)yellowColorPicker:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor yellowColor];
}

- (IBAction)blueColorPicker:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor blueColor];
}

- (IBAction)blackColorPicker:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor blackColor];
}

- (IBAction)clearCanvasButton:(UIButton *)sender {
    self.canvas.colorPicked = [UIColor whiteColor];
}

- (IBAction)strokePicker:(UISlider *)sender {
    self.canvas.strokeWidth = self.changeStroke.value;
}


@end
