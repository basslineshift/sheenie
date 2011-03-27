//
//  sheenViewController.m
//  sheen
//
//  Created by bios on 3/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "sheenViewController.h"
#define RANDOM_SEED() srandom(time(NULL))
#define RANDOM_INT(__MIN__, __MAX__) ((__MIN__) + random() % ((__MAX__+1) - (__MIN__)))

@implementation sheenViewController

@synthesize imageDisplay;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    imagesDictionary = [[NSMutableDictionary alloc]init];
    audioDictionary = [[NSMutableDictionary alloc]init];
    
    [imagesDictionary setValue:@"Sheen0.png" forKey:@"Sheen0"];
    [imagesDictionary setValue:@"Sheen1.png" forKey:@"Sheen1"];
    [imagesDictionary setValue:@"Sheen2.png" forKey:@"Sheen2"];
    [imagesDictionary setValue:@"Sheen3.png" forKey:@"Sheen3"];
    [imagesDictionary setValue:@"Sheen4.png" forKey:@"Sheen4"];
    [imagesDictionary setValue:@"Sheen5.png" forKey:@"Sheen5"];
    [imagesDictionary setValue:@"Sheen6.png" forKey:@"Sheen6"];
    [imagesDictionary setValue:@"Sheen7.png" forKey:@"Sheen7"];
    [imagesDictionary setValue:@"Sheen8.png" forKey:@"Sheen8"];
    [imagesDictionary setValue:@"Sheen9.png" forKey:@"Sheen9"];
    
    [audioDictionary setValue:@"andThenLikeThis.mp3" forKey:@"andThenLikeThis"];
    [audioDictionary setValue:@"bangingSevenGramRocks.mp3" forKey:@"bangingSevenGramRocks"];
    [audioDictionary setValue:@"bingo.mp3" forKey:@"bingo"];
    [audioDictionary setValue:@"cantIsTheCancerOfHappen.mp3" forKey:@"cantIsTheCancerOfHappen"];
    [audioDictionary setValue:@"dontRememberDontCare.mp3" forKey:@"dontRememberDontCare"];
    [audioDictionary setValue:@"droopyEyedArmlessChildren.mp3" forKey:@"droopyEyedArmlessChildren"];
    [audioDictionary setValue:@"drugTestsDontLie.mp3" forKey:@"drugTestsDontLie"];
    [audioDictionary setValue:@"dyingsForFools.mp3" forKey:@"dyingsForFools"];
    [audioDictionary setValue:@"go.mp3" forKey:@"go"];
    [audioDictionary setValue:@"godNo.mp3" forKey:@"godNo"];
    [audioDictionary setValue:@"iDontKnowMan.mp3" forKey:@"iDontKnowMan"];
    [audioDictionary setValue:@"imBiWinning.mp3" forKey:@"imBiWinning"];
    [audioDictionary setValue:@"iMissedPractice.mp3" forKey:@"iMissedPractice"];
    [audioDictionary setValue:@"imOnADrugCalledCharlieSheen.mp3" forKey:@"imOnADrugCalledCharlieSheen"];
    [audioDictionary setValue:@"imTalkingAboutPractice.mp3" forKey:@"imTalkingAboutPractice"];
    [audioDictionary setValue:@"itsNotAvailable.mp3" forKey:@"itsNotAvailable"];
    [audioDictionary setValue:@"itWasEpic.mp3" forKey:@"itWasEpic"];
    [audioDictionary setValue:@"justDoIt.mp3" forKey:@"justDoIt"];
    [audioDictionary setValue:@"lastTimeITookDrugs.mp3" forKey:@"lastTimeITookDrugs"];
    [audioDictionary setValue:@"lookatme.mp3" forKey:@"lookatme"];
    [audioDictionary setValue:@"myPassion.mp3" forKey:@"myPassion"];
    [audioDictionary setValue:@"notFromThisTerrestrialRealm.mp3" forKey:@"notFromThisTerrestrialRealm"];
    [audioDictionary setValue:@"oneSpeedOneGear.mp3" forKey:@"oneSpeedOneGear"];
    [audioDictionary setValue:@"passion.mp3" forKey:@"passion"];
    [audioDictionary setValue:@"scoreBoardDoesntLie.mp3" forKey:@"scoreBoardDoesntLie"];
    [audioDictionary setValue:@"thatsHowIRoll.mp3" forKey:@"thatsHowIRoll"];
    [audioDictionary setValue:@"theNikeSlogan.mp3" forKey:@"theNikeSlogan"];
    [audioDictionary setValue:@"uhOk.mp3" forKey:@"uhOk"];
    [audioDictionary setValue:@"um.mp3" forKey:@"um"];
    [audioDictionary setValue:@"wowWhatDoesThatMean.mp3" forKey:@"wowWhatDoesThatMean"];
    [audioDictionary setValue:@"wowWinning.mp3" forKey:@"wowWinning"];
    [audioDictionary setValue:@"yeah.mp3" forKey:@"yeah"];
    [audioDictionary setValue:@"youBorrowMyBrain.mp3" forKey:@"youBorrowMyBrain"];
    
    // create arrays to access randomly
    audioArray = [[NSArray alloc] initWithArray:[audioDictionary allKeys]];
    imagesArray = [[NSArray alloc] initWithArray:[imagesDictionary allKeys]];    
    
    
    RANDOM_SEED();
    // change the picture      
    int imageIndex = RANDOM_INT(0,9);
    NSMutableString* temp = [NSMutableString stringWithFormat:@"%@.jpg",[imagesArray objectAtIndex:imageIndex]];
    
    [imageDisplay setImage:[UIImage imageNamed:temp]];

    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma ibactions
- (IBAction) loadSoundBoard
{
    NSLog(@"hello world");
}

-(IBAction) playRandomClip
{
    
    // create the default string
    int audioIndex = RANDOM_INT(0,32);
    int imageIndex = RANDOM_INT(0,9);
    
    soundFilePath = [[[NSMutableString alloc] init]autorelease];
    soundFilePath = [audioArray objectAtIndex:audioIndex];
    
    // create the path, url and player
    filePath = [NSMutableString stringWithString:[[NSBundle mainBundle] pathForResource:soundFilePath ofType:@"mp3"]];
    fileURL = [[[NSURL alloc] initFileURLWithPath:filePath]autorelease];
    
    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:fileURL error:nil];
    
    NSLog(@"value is: %@",audioPlayer.url);
    
    if (audioPlayer.playing)
        [audioPlayer stop];
    [audioPlayer prepareToPlay];
    audioPlayer.currentTime = 0;
    audioPlayer.volume = 1;
    [audioPlayer play];
    
    // change the picture
    NSMutableString* temp = [NSMutableString stringWithFormat:@"%@.jpg",[imagesArray objectAtIndex:imageIndex]];
    
    [imageDisplay setImage:[UIImage imageNamed:temp]];
    NSLog(@"image is: %@",[imagesArray objectAtIndex:imageIndex]);
}

-(IBAction) loadNewImage
{
    
}

@end
