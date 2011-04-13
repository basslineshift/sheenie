//
//  SheenSoundBoard.h
//  sheen
//
//  Created by Thomas Bailey on 4/12/11.
//  Copyright 2011 University of Utah. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SheenSoundBoard;

@protocol SheenSoundBoardDelegate;

@interface SheenSoundBoard : UITableViewController <UITableViewDelegate, UITableViewDataSource>
{
     NSMutableDictionary* audioDictionary;
    
    id <SheenSoundBoardDelegate> delegate;
}

-(NSString*) keyForIndex:(int)index;
- (void) backToRandomSheen;

@property (nonatomic, retain) NSMutableDictionary* audioDictionary;
@property (nonatomic, retain) id<SheenSoundBoardDelegate> delegate;

@end

@protocol SheenSoundBoardDelegate

@required
-(void)playSoundClipWithKey:(NSString*)key;

@end
