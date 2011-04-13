//
//  SheenSoundBoard.m
//  sheen
//
//  Created by Thomas Bailey on 4/12/11.
//  Copyright 2011 University of Utah. All rights reserved.
//

#import "SheenSoundBoard.h"

@implementation SheenSoundBoard

@synthesize audioDictionary;
@synthesize delegate;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        audioDictionary = [[NSMutableDictionary alloc]init];
    }
    return self;
}

- (void)dealloc
{
    [audioDictionary release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Make a Save Button
	UIBarButtonItem* backButton = [[[UIBarButtonItem alloc] initWithTitle:@"Back"
																	style:UIBarButtonItemStyleBordered	
																   target:self
																   action:@selector(backToRandomSheen)] autorelease];
	[[self navigationItem] setLeftBarButtonItem:backButton];
	[self.navigationItem setTitle:@"Explicit Sheen"];
 }

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.audioDictionary count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    if (indexPath.section == 0)
    {
        [[cell textLabel] setText:[self keyForIndex:indexPath.row]];
    }
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [delegate playSoundClipWithKey:[self keyForIndex:indexPath.row]];
    [self.tableView deselectRowAtIndexPath:indexPath animated:TRUE];
}

#pragma mark -
#pragma mark Class Methods
-(NSString*) keyForIndex:(int)index
{
    switch (index) 
    {
        case 0:
            return @"addicted_to_charlie_sheen";
            break;
        case 1:
            return @"addicted_to_winning";
            break;
        case 2:
            return @"amateurs_bible_grippers";
            break;
        case 3:
            return @"battle_tested_bayonets";
            break;
        case 4:
            return @"bible_grippers";
            break;
        case 5:
            return @"bingo";
            break;
        case 6:
            return @"black_bart";
            break;
        case 7:
            return @"boom";
            break;
        case 8:
            return @"bring_it";
            break;
        case 9:
            return @"bring_me_a_challenge";
            break;
        case 10:
            return @"cant_process_it";
            break;
        case 11:
            return @"cured_with_my_brain";
            break;
        case 12:
            return @"deep_in_the_trenches";
            break;
        case 13:
            return @"deploy_my_ordinates";
            break;
        case 14:
            return @"dont_be_special";
            break;
        case 15:
            return @"f18_bro";
            break;
        case 16:
            return @"fools_and_trolls";
            break;
        case 17:
            return @"in_the_orca";
            break;
        case 18:
            return @"like_the_view";
            break;
        case 19:
            return @"magic";
            break;
        case 20:
            return @"strafing_runs_in_underwear";
            break;
        case 21:
            return @"whats_the_cure";
            break;
        case 22:
            return @"andThenLikeThis";
            break;
        case 23:
            return @"bangingSevenGramRocks";
            break;
        case 24:
            return @"bingo";
            break;
        case 25:
            return @"cantIsTheCAncerOfHappen";
            break;
        case 26:
            return @"dontRememberDontCare";
            break;
        case 27:
            return @"droopyEyedArmlessChildren";
            break;
        case 28:
            return @"drugTestsDontLie";
            break;
        case 29:
            return @"dyingsForFools";
            break;
        case 30:
            return @"go";
            break;
        case 31:
            return @"godNo";
            break;
        case 32:
            return @"iDontKnowMan";
            break;
        case 33:
            return @"imBiWinning";
            break;
        case 34:
            return @"iMissedPractice";
            break;
        case 35:
            return @"imOnADrugCalledCharlieSheen";
            break;
        case 36:
            return @"imTalkingAboutPractice";
            break;
        case 37:
            return @"itsNotAvailable";
            break;
        case 38:
            return @"itWasEpic";
            break;
        case 39:
            return @"justDoIt";
            break;
        case 40:
            return @"lastTimeITookDrugs";
            break;
        case 41:
            return @"lookatme";
            break;
        case 42:
            return @"myPassion";
            break;
        case 43:
            return @"notFromThisTerrestrialRealm";
            break;
        case 44:
            return @"oneSpeedOneGear";
            break;
        case 45:
            return @"passion";
            break;
        case 46:
            return @"scoreBoardDoesntLie";
            break;
        case 47:
            return @"thatsHowIRoll";
            break;
        case 48:
            return @"theNikeSlogan";
            break;
        case 49:
            return @"uhOk";
            break;
        case 50:
            return @"um";
            break;
        case 51:
            return @"wowWhatDoesThatMean";
            break;
        case 52:
            return @"wowWinning";
            break;
        case 53:
            return @"yeah";
            break;
        case 54:
            return @"youBorrowMyBrain";
            break;      
        default:
            break;
    }
     return nil;
}

- (void) backToRandomSheen
{
    [self dismissModalViewControllerAnimated:TRUE];
}

@end
