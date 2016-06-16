//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISCard.h"
#import "FISCardDeck.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISCard *test = [[FISCard alloc] init];
    NSLog(@"%@", test.description);
    
    FISCardDeck *newDeck = [[FISCardDeck alloc] init];
    NSLog(@"%@", newDeck.description);
    
    [newDeck shuffleRemainingCards];
    NSLog(@"This is the shuffled deck: %@", newDeck.description);
    
    FISCard *cardOneRoundOne = [newDeck drawNextCard];
    FISCard *cardTwoRoundOne = [newDeck drawNextCard];
    NSLog(@"Which card won the first round? Card one: %@, Card two: %@", cardOneRoundOne.description, cardTwoRoundOne.description);
    NSLog(@"What cards remain in the deck? %@", newDeck.description);
    NSLog(@"What cards have been dealt? %@", newDeck.dealtCards);
    
    return YES;
}

@end
