//
//  UIView+EasyDimensions.h
//
//  Created by Ravi Kondapalli on 8/4/14.
//  Copyright (c) 2014 Ravi Kondapalli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (EasyDimensions)
-(void)setFrameWithNewX:(CGFloat)newX;
-(void)setFrameWithNewY:(CGFloat)newY;
-(void)setFrameWithNewWidth:(CGFloat)newWidth;
-(void)setFrameWithNewHeight:(CGFloat)newHeight;
-(void)setFrameWithNewOrigin:(CGPoint)newOrigin;
-(void)setFrameWithNewSize:(CGSize)newSize;

-(void)setFrameByShiftingOrigin:(CGPoint)originShift;
-(void)setFrameByShiftingX:(CGFloat)xShift;
-(void)setFrameByShiftingY:(CGFloat)yShift;

-(CGFloat)x__;
-(CGFloat)y__;
-(CGFloat)width__;
-(CGFloat)height__;
-(CGFloat)endingPositionX;
-(CGFloat)endingPositionY;

-(void)setViewForTesting;
-(void)logFrameWithArgument:(NSString*)argument;

-(void)spaceOut;
-(void)spaceIn;

- (void)circleize;

@end
