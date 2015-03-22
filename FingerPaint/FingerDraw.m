//
//  FingerDraw.m
//  FingerPaint
//
//  Created by Shahin on 2015-03-21.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "FingerDraw.h"

@implementation FingerDraw

-(instancetype)init {
    self = [super init];
    
    if (self) {
        self.curentPath = [UIBezierPath new];
        self.allPaths = [NSMutableArray new];
    }
    return self;
}


- (void)captureDrawing:(UIBezierPath *)bezierPath {
    
}


@end
