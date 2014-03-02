//
//  MyLayer.h
//  PathfindingExample
//
//  Created by Renan Benevides Cargnin on 2/28/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

enum option
{
    Agent,
    Barrier,
    Destiny
};

@interface MyLayer : CCNode
{
    NSMutableArray *cells;
}

@property NSMutableArray *cells;

- (void)selectedAgent:(id)sender;
- (void)selectedBarrier:(id)sender;
- (void)selectedDestiny:(id)sender;
- (void)clear:(id)sender;
- (void)nextIteration:(id)sender;
- (void)animate:(id)sender;

+ (void)setOptionSelected:(enum option)option;
+ (enum option)optionSelected;

+ (void)setAgentSelected:(BOOL)selected;
+ (BOOL)agentSelected;
+ (void)setDestinySelected:(BOOL)selected;
+ (BOOL)destinySelected;

@end
