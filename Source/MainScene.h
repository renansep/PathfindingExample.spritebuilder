//
//  MainScene.h
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "CCNode.h"
@class Cell;

@interface MainScene : CCNode
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

@end
