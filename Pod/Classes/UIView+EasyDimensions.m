//
//  UIView+EasyDimensions.m
//
//  Created by Ravi Kondapalli on 8/4/14.
//  Copyright (c) 2014 Ravi Kondapalli. All rights reserved.
//

#import "UIView+EasyDimensions.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (EasyDimensions)
-(void)setFrameWithNewX:(CGFloat)newX
{
  self.frame = CGRectMake(newX, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

-(void)setFrameWithNewY:(CGFloat)newY
{
  self.frame = CGRectMake(self.frame.origin.x, newY, self.frame.size.width, self.frame.size.height);
}

-(void)setFrameWithNewWidth:(CGFloat)newWidth
{
  self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, newWidth, self.frame.size.height);
}

-(void)setFrameWithNewHeight:(CGFloat)newHeight
{
  self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, newHeight);
}

-(void)setFrameWithNewOrigin:(CGPoint)newOrigin
{
  self.frame = CGRectMake(newOrigin.x, newOrigin.y, self.frame.size.width, self.frame.size.height);
}

-(void)setFrameWithNewSize:(CGSize)newSize
{
  self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, newSize.width, newSize.height);
}

-(void)setFrameByShiftingOrigin:(CGPoint)originShift
{
  self.frame = CGRectMake(self.frame.origin.x + originShift.x, self.frame.origin.y + originShift.y, self.frame.size.width, self.frame.size.height);
}

-(void)setFrameByShiftingX:(CGFloat)xShift
{
  self.frame = CGRectMake(self.frame.origin.x + xShift, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

-(void)setFrameByShiftingY:(CGFloat)yShift
{
  self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y + yShift, self.frame.size.width, self.frame.size.height);
}

-(CGFloat)width__
{
  return self.frame.size.width;
}

-(CGFloat)x__
{
  return self.frame.origin.x;
}

-(CGFloat)y__
{
  return self.frame.origin.y;
}

-(CGFloat)height__
{
  return self.frame.size.height;
}

-(void)setViewForTesting
{
  self.backgroundColor = [[UIColor purpleColor] colorWithAlphaComponent:0.4];
}

-(CGFloat)endingPositionX
{
  return (self.frame.origin.x + self.frame.size.width);
}

-(CGFloat)endingPositionY
{
  return (self.frame.origin.y + self.frame.size.height);
}

-(void)logFrameWithArgument:(NSString*)argument
{
  NSLog(@"%@ %@", NSStringFromCGRect(self.frame), argument);
}

-(void)spaceOut
{
  CALayer *layer = self.layer;
  layer.zPosition = -4000;
  CGFloat scale = 0.9;
  layer.transform = CATransform3DMakeScale(scale, scale, scale);
}

-(void)spaceIn
{
  CALayer *layer = self.layer;
  layer.zPosition = 0;
  CGFloat scale = 1;
  layer.transform = CATransform3DMakeScale(scale, scale, scale);
}

-(void)circleize
{
  if (self.width__==self.height__)
    self.layer.cornerRadius = self.width__/2.0;
}

@end
