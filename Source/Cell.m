//
//  Cell.m
//  PathfindingExample
//
//  Created by Renan Cargnin on 2/28/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (void)didLoadFromCCB
{
    NSLog(@"Cell loaded");
}

- (float)width
{
    return self.contentSize.width * self.scale;
}

- (float)height
{
    return self.contentSize.height * self.scale;
}

@end
