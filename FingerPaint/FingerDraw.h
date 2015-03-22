//
//  FingerDraw.h
//  FingerPaint
//
//  Created by Shahin on 2015-03-21.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FingerDrawDelegate <NSObject>

- (void)addCurrentPathToPaths;
- (void)resetCurrentPath;

@end

@interface FingerDraw : UIBezierPath

@property (nonatomic, strong) UIBezierPath *curentPath;
@property (nonatomic, strong) NSMutableArray *allPaths;
@property (weak, nonatomic) id<FingerDrawDelegate> delegate;

- (void)captureDrawing:(UIBezierPath *)bezierPath;

@end
