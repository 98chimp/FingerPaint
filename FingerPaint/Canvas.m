//
//  Canvas.m
//  FingerPaint
//
//  Created by Shahin on 2015-03-21.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "Canvas.h"
#import <QuartzCore/QuartzCore.h>

static CGPoint midpoint(CGPoint p0, CGPoint p1) {
    return (CGPoint) {
        (p0.x + p1.x) / 2.0,
        (p0.y + p1.y) / 2.0
    };
}

@interface Canvas () {
    UIBezierPath *path;
    CGPoint previousPoint;
}
@end

@implementation Canvas

- (void)commonInit {
    path = [UIBezierPath bezierPath];
    self.strokeWidth = 8.0;
    self.colorPicked = [UIColor redColor];

    
    // Capture touches
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    pan.maximumNumberOfTouches = pan.minimumNumberOfTouches = 1;
    [self addGestureRecognizer:pan];
    
    // Erase with long press
    [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(erase)]];
    
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) [self commonInit];
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) [self commonInit];
    return self;
}

- (void)erase {
    path = [UIBezierPath bezierPath];
    [self setNeedsDisplay];
}


- (void)pan:(UIPanGestureRecognizer *)pan {
    CGPoint currentPoint = [pan locationInView:self];
    CGPoint midPoint = midpoint(previousPoint, currentPoint);
    NSLog(@"start drawing");
    
    if (pan.state == UIGestureRecognizerStateBegan) {
        [path moveToPoint:currentPoint];
    } else if (pan.state == UIGestureRecognizerStateChanged) {
        [path addQuadCurveToPoint:midPoint controlPoint:previousPoint];
    }
    
    previousPoint = currentPoint;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    [self.colorPicked setStroke];
    [path stroke];
}

@end

/*
@implementation Canvas


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    
}

@end
 */
