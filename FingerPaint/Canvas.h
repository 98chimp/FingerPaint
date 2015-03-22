//
//  Canvas.h
//  FingerPaint
//
//  Created by Shahin on 2015-03-21.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Canvas : UIView

@property (strong, nonatomic) UIColor *colorPicked;
@property (assign, nonatomic) float strokeWidth;

@end
