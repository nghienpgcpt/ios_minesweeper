//
//  UIButton+Property.m
//  LDMineSweeper
//
//  Created by Lin Dong on 2/11/15.
//  Copyright (c) 2015 Lin Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIButton+Property.h"
#import <objc/runtime.h>


@implementation UIButton(Property)

static char UIB_PROPERTY_KEY;

@dynamic status;

-(void)setStatus:(NSObject *)status
{
    objc_setAssociatedObject(self, &UIB_PROPERTY_KEY, status, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSObject*)status
{
    return (NSObject*)objc_getAssociatedObject(self, &UIB_PROPERTY_KEY);
}


@end