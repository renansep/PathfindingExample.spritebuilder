//
//  Cell.m
//  PathfindingExample
//
//  Created by Renan Cargnin on 2/28/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Cell.h"
#import "MyLayer.h"

@implementation Cell

- (void)didLoadFromCCB
{
    NSLog(@"Cell loaded");
    
    self.userInteractionEnabled = YES;
}

- (float)width
{
    return self.contentSize.width * self.scale;
}

- (float)height
{
    return self.contentSize.height * self.scale;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    if ([MyLayer optionSelected] == Agent)
    {
        if (![MyLayer agentSelected])
        {
            [self setColor:[CCColor colorWithRed:0 green:0 blue:1]];
            [MyLayer setAgentSelected:YES];
        }
    }
    else if ([MyLayer optionSelected] == Destiny)
    {
        if (![MyLayer destinySelected])
        {
            [self setColor:[CCColor colorWithRed:0 green:1 blue:0]];
            [MyLayer setDestinySelected:YES];
        }
    }
    else if ([MyLayer optionSelected] == Barrier)
    {
        [self setColor:[CCColor colorWithRed:1 green:0 blue:0]];
    }
}

@end
