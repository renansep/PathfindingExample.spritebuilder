//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"
#import "Cell.h"

@implementation MainScene

@synthesize cells;

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
    
    CCNode *c = [CCBReader load:@"Cell"];
    [c setPosition:ccp(self.contentSize.width/2, self.contentSize.height/2)];
    [self addChild:c];
}

- (void)selectedAgent:(id)sender
{
    NSLog(@"Agent");
}

- (void)selectedBarrier:(id)sender
{
    NSLog(@"Barrier");
}

- (void)selectedDestiny:(id)sender
{
    NSLog(@"Destiny");
}

- (void)clear:(id)sender
{
    NSLog(@"Clear");
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
