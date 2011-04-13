//
//  sheenViewController.h
//  sheen
//
//  Created by bios on 3/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
#import "SheenSoundBoard.h"

@interface sheenViewController : UIViewController <AVAudioPlayerDelegate, SheenSoundBoardDelegate>
{
    NSMutableDictionary* imagesDictionary;
    NSMutableDictionary* audioDictionary;
    NSArray* imagesArray;
    NSArray* audioArray;
    NSMutableString* soundFilePath;
    
    
    IBOutlet UIImageView* imageDisplay;
    
    AVAudioPlayer* audioPlayer;
    NSMutableString* filePath;
    NSURL* fileURL;
}

-(IBAction) loadSoundBoard;
-(IBAction) playRandomClip;
-(IBAction) loadNewImage;

@property (nonatomic, retain) UIImageView* imageDisplay;

@end
