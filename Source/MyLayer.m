//
//  MyLayer.m
//  PathfindingExample
//
//  Created by Renan Benevides Cargnin on 2/28/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "MyLayer.h"
#import "Cell.h"

@implementation MyLayer

@synthesize cells;

static enum option optionSelected;
static BOOL agentSelected;
static BOOL barrierSelected;
static BOOL destinySelected;

- (void)didLoadFromCCB
{
    NSLog(@"Scene loaded");
    
    cells = [[NSMutableArray alloc] initWithCapacity:10];
    for (int i=0; i<10; i++)
    {
        [cells addObject:[[NSMutableArray alloc] initWithCapacity:10]];
        for (int j=0; j<10; j++)
        {
            cells[i][j] = [CCBReader load:@"Cell"];
            Cell *c = cells[i][j];
            [c setScale:self.contentSize.width / c.contentSize.width / 10];
            [c setPosition:ccp(i * [c width] + [c width] / 2,
                               self.contentSize.height - j * [c height] - [c height] / 2)];
            [self addChild:c];
        }
    }
    
    optionSelected = -1;
    agentSelected = NO;
    barrierSelected = NO;
    destinySelected = NO;
}

- (void)selectedAgent:(id)sender
{
    NSLog(@"Agent");
    optionSelected = Agent;
}

- (void)selectedBarrier:(id)sender
{
    NSLog(@"Barrier");
    optionSelected = Barrier;
}

- (void)selectedDestiny:(id)sender
{
    NSLog(@"Destiny");
    optionSelected = Destiny;
}

+ (void)setOptionSelected:(enum option)option
{
    optionSelected = option;
}

+ (enum option)optionSelected
{
    return optionSelected;
}

+ (void)setAgentSelected:(BOOL)selected
{
    agentSelected = selected;
}

+ (BOOL)agentSelected
{
    return agentSelected;
}

+ (void)setDestinySelected:(BOOL)selected
{
    destinySelected = selected;
}

+ (BOOL)destinySelected
{
    return destinySelected;
}

- (void)clear:(id)sender
{
    NSLog(@"Clear");
    for (NSMutableArray *n in cells)
    {
        for (Cell *c in n)
        {
            [c setColor:[CCColor colorWithRed:1 green:1 blue:1]];
        }
    }
    [MyLayer setDestinySelected:NO];
    [MyLayer setAgentSelected:NO];
    optionSelected = -1;
}

- (void)nextIteration:(id)sender
{
    NSLog(@"Next");
}

- (void)animate:(id)sender
{
    NSLog(@"Animate");
}

@end
