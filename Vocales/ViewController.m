//
//  ViewController.m
//  Vocales
//
//  Created by James Parks on 8/7/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic, strong) AVAudioPlayer *player;
@property (nonatomic, strong) AVAudioPlayer *player2;
@property (nonatomic, strong) AVAudioPlayer *player3;
@property (nonatomic, strong) AVAudioPlayer *player4;
@property (nonatomic, strong) AVAudioPlayer *player5;
@property (nonatomic, strong) AVAudioPlayer *player6;
@property (nonatomic, strong) AVAudioPlayer *player7;
@property (nonatomic, strong) AVAudioPlayer *player8;
@property (nonatomic, strong) AVAudioPlayer *player9;
@property (nonatomic, strong) AVAudioPlayer *player10;

@end

@implementation ViewController
@synthesize openPlayer = _openPlayer;
@synthesize unicornioOutlet;
@synthesize iguanaOutlet;
@synthesize oButtonOutlet;
@synthesize iButtonOutlet;
@synthesize eButtonOutlet;
@synthesize uButtonOutlet;
@synthesize avionOutlet;
@synthesize elefanteOutlet;
@synthesize manOutlet;
@synthesize babyOutlet;
@synthesize womanOutlet;
@synthesize ostraOutlet;
@synthesize aButtonOutlet;
@synthesize player;
@synthesize player2;
@synthesize player3;
@synthesize player4;
@synthesize player5;
@synthesize player6;
@synthesize player7;
@synthesize player8;
@synthesize player9;
@synthesize player10;
@synthesize lastPress;
@synthesize homeButton;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.\
    
    NSURL *url = [[NSBundle mainBundle]
                  URLForResource:@"opening2" withExtension:@"mp4"];
    self.openPlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
    self.openPlayer.controlStyle = MPMovieControlStyleNone;
    self.openPlayer.shouldAutoplay = YES;
    [self.openPlayer prepareToPlay];
    
    self.openPlayer.view.frame =self.view.bounds;
    self.openPlayer.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.openPlayer.view];
    [self.openPlayer play];
    
    ViewController __weak *weakself = self;
    
    [[NSNotificationCenter defaultCenter] addObserverForName:MPMoviePlayerPlaybackDidFinishNotification
                                                      object:self.openPlayer
                                                       queue:[NSOperationQueue mainQueue]
                                                  usingBlock:^(NSNotification *note)
     {
         [[NSNotificationCenter defaultCenter] removeObserver:weakself
                                                         name:MPMoviePlayerPlaybackDidFinishNotification object:weakself.openPlayer];
         [weakself.openPlayer.view removeFromSuperview];
         
     }];


    
    [UIView animateWithDuration:1.0 delay:8.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.aButtonOutlet.frame = CGRectMake(130, 91, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:8.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.uButtonOutlet.frame = CGRectMake(130, 310, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:8.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.eButtonOutlet.frame = CGRectMake(20, 200, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:8.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.iButtonOutlet.frame = CGRectMake(130, 200, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:8.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.oButtonOutlet.frame = CGRectMake(240, 200, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:8.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.homeButton.frame = CGRectMake(20, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];

    
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"aBabyVoice" ofType:@"mp3"]];
    
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"avionBaby" ofType:@"mp3"]];
    
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"elefanteBaby" ofType:@"mp3"]];
    
    NSURL *fileURL4 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"eBabyVoice" ofType:@"mp3"]];
      
    NSURL *fileURL5 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iBabyVoice" ofType:@"mp3"]];
    
    NSURL *fileURL6 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"oBabySound" ofType:@"mp3"]];
    
    NSURL *fileURL7 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"uBabyVoice" ofType:@"mp3"]];
    
    NSURL *fileURL8 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iguanababy" ofType:@"mp3"]];
    
    NSURL *fileURL9 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"unicorniobaby" ofType:@"mp3"]];
    
    NSURL *fileURL28 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"osobaby" ofType:@"mp3"]];
    
    
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    if (self.player) {
        player.numberOfLoops = 0;
    }
    
    [player prepareToPlay];
    
    
    self.player2 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.player2) {
        player2.numberOfLoops = 0;
    }
    
    [player2 prepareToPlay];
    
    self.player3 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.player3) {
        player3.numberOfLoops = 0;
    }
    
    [player3 prepareToPlay];
    
    self.player4 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL4 error:nil];
    if (self.player4) {
        player4.numberOfLoops = 0;
    }
    
    [player4 prepareToPlay];
    
    self.player5 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL5 error:nil];
    if (self.player5) {
        player5.numberOfLoops = 0;
    }
    
    [player5 prepareToPlay];
    
    self.player6 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL6 error:nil];
    if (self.player6) {
        player6.numberOfLoops = 0;
    }
    
    [player6 prepareToPlay];
    
    self.player7 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL7 error:nil];
    if (self.player7) {
        player7.numberOfLoops = 0;
    }
    
    [player7 prepareToPlay];
    
    self.player8 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL8 error:nil];
    if (self.player8) {
        player8.numberOfLoops = 0;
    }
    
    [player8 prepareToPlay];
    
    self.player9 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL9 error:nil];
    if (self.player9) {
        player9.numberOfLoops = 0;
    }
    
    [player9 prepareToPlay];
    
    self.player10 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL28 error:nil];
    if (self.player10) {
        player10.numberOfLoops = 0;
    }
    
    [player10 prepareToPlay];
    
}

- (void)viewDidUnload
{
    [self setAButtonOutlet:nil];
    [self setOButtonOutlet:nil];
    [self setIButtonOutlet:nil];
    [self setEButtonOutlet:nil];
    [self setUButtonOutlet:nil];
    [self setAvionOutlet:nil];
    [self setElefanteOutlet:nil];
    [self setUnicornioOutlet:nil];
    [self setIguanaOutlet:nil];
    [self setManOutlet:nil];
    [self setBabyOutlet:nil];
    [self setWomanOutlet:nil];
    [self setOstraOutlet:nil];
    [self setHomeButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }

}

- (IBAction)buttonPressed:(UIButton *)sender {
    if ([sender.titleLabel.text isEqualToString:@"Aa"]) {
        
        lastPress = @"Aa";
        
            [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
                self.aButtonOutlet.frame = CGRectMake(40, 122, 240, 240);
            }completion:^(BOOL finished){
                NSLog(@"Animation finished.");
                player.currentTime = 0;
                [player play];
            }];
        
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.uButtonOutlet.frame = CGRectMake(130, 500, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.eButtonOutlet.frame = CGRectMake(-90, 200, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.iButtonOutlet.frame = CGRectMake(130, 499, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.oButtonOutlet.frame = CGRectMake(500, 200, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.avionOutlet.frame = CGRectMake(240, 20, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];

        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.manOutlet.frame = CGRectMake(20, 380, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.womanOutlet.frame = CGRectMake(230, 380, 70, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.babyOutlet.frame = CGRectMake(130, 380, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
    } else if ([sender.titleLabel.text isEqualToString:@"Ee"]) {
        lastPress = @"Ee";
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.aButtonOutlet.frame = CGRectMake(130, -90, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.uButtonOutlet.frame = CGRectMake(130, 500, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.eButtonOutlet.frame = CGRectMake(40, 122, 240, 240);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
            player4.currentTime = 0;
            [player4 play];
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.iButtonOutlet.frame = CGRectMake(130, 499, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.oButtonOutlet.frame = CGRectMake(500, 200, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.elefanteOutlet.frame = CGRectMake(240, 20, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.manOutlet.frame = CGRectMake(20, 380, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.womanOutlet.frame = CGRectMake(230, 380, 70, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.babyOutlet.frame = CGRectMake(130, 380, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
    } else if ([sender.titleLabel.text isEqualToString:@"Ii"]) {
        lastPress = @"Ii";
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.aButtonOutlet.frame = CGRectMake(130, -90, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.uButtonOutlet.frame = CGRectMake(130, 500, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.eButtonOutlet.frame = CGRectMake(-90, 200, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.iButtonOutlet.frame = CGRectMake(40, 122, 240, 240);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
            player5.currentTime = 0;
            [player5 play];
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.oButtonOutlet.frame = CGRectMake(500, 200, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.iguanaOutlet.frame = CGRectMake(180, 20, 120, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.manOutlet.frame = CGRectMake(20, 380, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.womanOutlet.frame = CGRectMake(230, 380, 70, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.babyOutlet.frame = CGRectMake(130, 380, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
    } else if ([sender.titleLabel.text isEqualToString:@"Oo"]) {
        lastPress = @"Oo";
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.aButtonOutlet.frame = CGRectMake(130, -90, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.uButtonOutlet.frame = CGRectMake(130, 500, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.eButtonOutlet.frame = CGRectMake(-90, 200, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.iButtonOutlet.frame = CGRectMake(130, 499, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.oButtonOutlet.frame = CGRectMake(40, 122, 240, 240);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
            player6.currentTime = 0;
            [player6 play];
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.ostraOutlet.frame = CGRectMake(240, 12, 60, 75);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.manOutlet.frame = CGRectMake(20, 380, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.womanOutlet.frame = CGRectMake(230, 380, 70, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.babyOutlet.frame = CGRectMake(130, 380, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
    } else if ([sender.titleLabel.text isEqualToString:@"Uu"]) {
        lastPress = @"Uu";
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.aButtonOutlet.frame = CGRectMake(130, -90, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.uButtonOutlet.frame = CGRectMake(40, 122, 240, 240);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
            player7.currentTime = 0;
            [player7 play];
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.eButtonOutlet.frame = CGRectMake(-90, 200, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.iButtonOutlet.frame = CGRectMake(130, -90, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.oButtonOutlet.frame = CGRectMake(500, 200, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.unicornioOutlet.frame = CGRectMake(240, 20, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.manOutlet.frame = CGRectMake(20, 380, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.womanOutlet.frame = CGRectMake(230, 380, 70, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.babyOutlet.frame = CGRectMake(130, 380, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
    } else if ([sender.titleLabel.text isEqualToString:@"avion"]){
        lastPress = @"avion";
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.avionOutlet.frame = CGRectMake(40, 122, 240, 240);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.aButtonOutlet.frame = CGRectMake(240, 20, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
            player2.currentTime = 0;
            [player2 play];
        }];
        
    } else if ([sender.titleLabel.text isEqualToString:@"elefante"]) {
        lastPress = @"elefante";
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.elefanteOutlet.frame = CGRectMake(40, 122, 240, 240);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.eButtonOutlet.frame = CGRectMake(240, 20, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
            player3.currentTime = 0;
            [player3 play];
        }];
        
    } else if ([sender.titleLabel.text isEqualToString:@"iguana"]) {
        lastPress = @"iguana";
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.iguanaOutlet.frame = CGRectMake(40, 170, 240, 120);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
            player8.currentTime = 0;
            [player8 play];
        }];
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.iButtonOutlet.frame = CGRectMake(240, 20, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
        
    } else if ([sender.titleLabel.text isEqualToString:@"unicornio"]) {
        lastPress = @"unicornio";
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.unicornioOutlet.frame = CGRectMake(40, 122, 240, 240);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
            player9.currentTime = 0;
            [player9 play];
        }];
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.uButtonOutlet.frame = CGRectMake(240, 20, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
    } else if ([sender.titleLabel.text isEqualToString:@"ostra"]) {
        lastPress = @"ostra";
        
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.ostraOutlet.frame = CGRectMake(70, 117, 180, 225);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
            player10.currentTime = 0;
            [player10 play];
        }];
        [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
            self.oButtonOutlet.frame = CGRectMake(240, 20, 60, 60);
        }completion:^(BOOL finished){
            NSLog(@"Animation finished.");
        }];
//    } else if ([sender.titleLabel.text isEqualToString:@"woman"]) {
//        NSURL *fileURL10 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"avionwoman" ofType:@"mp3"]];
//        
//         NSURL *fileURL11 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"elefantewoman" ofType:@"mp3"]];
//        
//         NSURL *fileURL12 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iguanawoman" ofType:@"mp3"]];
//        
//         NSURL *fileURL13 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"unicorniowoman" ofType:@"mp3"]];
//        
//        self.player2 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL10 error:nil];
//        if (self.player2) {
//            player2.numberOfLoops = 0;
//        }
//        
//        player2.prepareToPlay;
//        
//        self.player3 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL11 error:nil];
//        if (self.player3) {
//            player3.numberOfLoops = 0;
//        }
//        
//        player3.prepareToPlay;
//        
//        self.player8 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL12 error:nil];
//        if (self.player8) {
//            player8.numberOfLoops = 0;
//        }
//        
//        player8.prepareToPlay;
//        
//        self.player9 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL13 error:nil];
//        if (self.player9) {
//            player9.numberOfLoops = 0;
//        }
//        
//        player9.prepareToPlay;
        
//    } else if ([sender.titleLabel.text isEqualToString:@"baby"]) {
//        NSURL *fileURL = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"aBabyVoice" ofType:@"mp3"]];
//        
//        NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"avionBaby" ofType:@"mp3"]];
//        
//        NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"elefanteBaby" ofType:@"mp3"]];
//        
//        NSURL *fileURL4 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"eBabyVoice" ofType:@"mp3"]];
//        
//        NSURL *fileURL5 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iBabyVoice" ofType:@"mp3"]];
//        
//        NSURL *fileURL6 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"oBabySound" ofType:@"mp3"]];
//        
//        NSURL *fileURL7 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"uBabyVoice" ofType:@"mp3"]];
//        
//        NSURL *fileURL8 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iguanababy" ofType:@"mp3"]];
//        
//        NSURL *fileURL9 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"unicorniobaby" ofType:@"mp3"]];
//        
//        self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
//        if (self.player) {
//            player.numberOfLoops = 0;
//        }
//        
//        player.prepareToPlay;
//        
//        self.player2 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
//        if (self.player2) {
//            player2.numberOfLoops = 0;
//        }
//        
//        player2.prepareToPlay;
//        
//        self.player3 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
//        if (self.player3) {
//            player3.numberOfLoops = 0;
//        }
//        
//        player3.prepareToPlay;
//        
//        self.player4 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL4 error:nil];
//        if (self.player4) {
//            player4.numberOfLoops = 0;
//        }
//        
//        player4.prepareToPlay;
//        
//        self.player5 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL5 error:nil];
//        if (self.player5) {
//            player5.numberOfLoops = 0;
//        }
//        
//        player5.prepareToPlay;
//        
//        self.player6 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL6 error:nil];
//        if (self.player6) {
//            player6.numberOfLoops = 0;
//        }
//        
//        player6.prepareToPlay;
//        
//        self.player7 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL7 error:nil];
//        if (self.player7) {
//            player7.numberOfLoops = 0;
//        }
//        
//        player7.prepareToPlay;
//        
//        self.player8 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL8 error:nil];
//        if (self.player8) {
//            player8.numberOfLoops = 0;
//        }
//        
//        player8.prepareToPlay;
//        
//        self.player9 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL9 error:nil];
//        if (self.player9) {
//            player9.numberOfLoops = 0;
//        }
//        
//        player9.prepareToPlay;
    }
    
   
    
}

- (IBAction)homeButtonPressed:(UIButton *)sender {
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.aButtonOutlet.frame = CGRectMake(130, 91, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.uButtonOutlet.frame = CGRectMake(130, 310, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.eButtonOutlet.frame = CGRectMake(20, 200, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.iButtonOutlet.frame = CGRectMake(130, 200, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.oButtonOutlet.frame = CGRectMake(240, 200, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.avionOutlet.frame = CGRectMake(400, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.elefanteOutlet.frame = CGRectMake(401, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.unicornioOutlet.frame = CGRectMake(402, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.iguanaOutlet.frame = CGRectMake(403, 20, 120, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.ostraOutlet.frame = CGRectMake(404, 20, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.manOutlet.frame = CGRectMake(20, 500, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.womanOutlet.frame = CGRectMake(230, 500, 70, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
    [UIView animateWithDuration:1.0 delay:0.0 options:UIViewAnimationCurveEaseInOut animations:^{
        self.babyOutlet.frame = CGRectMake(130, 500, 60, 60);
    }completion:^(BOOL finished){
        NSLog(@"Animation finished.");
    }];
    
}
- (IBAction)womanPressed:(UIButton *)sender {
    
    UIButton *womanPressed = [UIButton buttonWithType:UIButtonTypeCustom];
    [womanPressed setTitle:self.lastPress forState:UIControlStateNormal];
    [self buttonPressed:womanPressed];
    
    NSURL *fileURL10 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"avionwoman" ofType:@"mp3"]];
    
    NSURL *fileURL11 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"elefantewoman" ofType:@"mp3"]];
    
    NSURL *fileURL12 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iguanawoman" ofType:@"mp3"]];
    
    NSURL *fileURL13 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"unicorniowoman" ofType:@"mp3"]];
    
    NSURL *fileURL14 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"aWomanVoice" ofType:@"mp3"]];
    
    NSURL *fileURL15 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"eWomanVoice" ofType:@"mp3"]];
    
    NSURL *fileURL16 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iWomanVoice" ofType:@"mp3"]];
    
    NSURL *fileURL17 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"oWomanVoice" ofType:@"mp3"]];
    
    NSURL *fileURL18 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"uWomanVoice" ofType:@"mp3"]];
    
    NSURL *fileURL29 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"osowoman" ofType:@"mp3"]];
    
   
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL14 error:nil];
    if (self.player) {
        player.numberOfLoops = 0;
    }
    
    [player prepareToPlay];
    
    self.player2 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL10 error:nil];
    if (self.player2) {
        player2.numberOfLoops = 0;
    }
    
    [player2 prepareToPlay];
    
    self.player3 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL11 error:nil];
    if (self.player3) {
        player3.numberOfLoops = 0;
    }
    
    [player3 prepareToPlay];
    
    self.player4 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL15 error:nil];
    if (self.player4) {
        player4.numberOfLoops = 0;
    }
    
    [player4 prepareToPlay];
    
    self.player5 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL16 error:nil];
    if (self.player5) {
        player5.numberOfLoops = 0;
    }
    
    [player5 prepareToPlay];
    
    self.player6 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL17 error:nil];
    if (self.player6) {
        player6.numberOfLoops = 0;
    }
    
    [player6 prepareToPlay];
    
    self.player7 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL18 error:nil];
    if (self.player7) {
        player7.numberOfLoops = 0;
    }
    
    [player7 prepareToPlay];
    
    self.player8 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL12 error:nil];
    if (self.player8) {
        player8.numberOfLoops = 0;
    }
    
    [player8 prepareToPlay];
    
    self.player9 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL13 error:nil];
    if (self.player9) {
        player9.numberOfLoops = 0;
    }
    
    [player9 prepareToPlay];
    
    self.player10 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL29 error:nil];
    if (self.player10) {
        player10.numberOfLoops = 0;
    }
    
    [player10 prepareToPlay];
    
    if ([self.lastPress isEqualToString:@"avion"]) {
        [player2 play];
    } else if ([self.lastPress isEqualToString:@"elefante"]) {
        [player3 play];
    } else if ([self.lastPress isEqualToString:@"iguana"]) {
        [player8 play];
    } else if ([self.lastPress isEqualToString:@"unicornio"]) {
        [player9 play];
    } else if ([self.lastPress isEqualToString:@"Ee"]) {
        [player4 play];
    } else if ([self.lastPress isEqualToString:@"Aa"]) {
        [player play];
    } else if ([self.lastPress isEqualToString:@"Ii"]) {
        [player5 play];
    } else if ([self.lastPress isEqualToString:@"Oo"]) {
        [player6 play];
    } else if ([self.lastPress isEqualToString:@"Uu"]) {
        [player7 play];
    } else if ([self.lastPress isEqualToString:@"ostra"]) {
        [player10 play];
    }
    
}

- (IBAction)babyPressed:(UIButton *)sender {
    UIButton *babyPressed = [UIButton buttonWithType:UIButtonTypeCustom];
    [babyPressed setTitle:self.lastPress forState:UIControlStateNormal];
    [self buttonPressed:babyPressed];
    
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"aBabyVoice" ofType:@"mp3"]];
    
    NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"avionBaby" ofType:@"mp3"]];
    //        
    NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"elefanteBaby" ofType:@"mp3"]];
    //        
    NSURL *fileURL4 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"eBabyVoice" ofType:@"mp3"]];
    //        
    NSURL *fileURL5 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iBabyVoice" ofType:@"mp3"]];
    //        
    NSURL *fileURL6 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"oBabySound" ofType:@"mp3"]];
    //        
    NSURL *fileURL7 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"uBabyVoice" ofType:@"mp3"]];
    //        
    NSURL *fileURL8 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iguanababy" ofType:@"mp3"]];
    //        
    NSURL *fileURL9 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"unicorniobaby" ofType:@"mp3"]];
    
    NSURL *fileURL28 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"osobaby" ofType:@"mp3"]];
    
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    if (self.player) {
        player.numberOfLoops = 0;
    }
    
    [player prepareToPlay];
    
    self.player2 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL2 error:nil];
    if (self.player2) {
        player2.numberOfLoops = 0;
    }
    
    [player2 prepareToPlay];
    
    self.player3 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL3 error:nil];
    if (self.player3) {
        player3.numberOfLoops = 0;
    }
    
    [player3 prepareToPlay];
    
    self.player4 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL4 error:nil];
    if (self.player4) {
        player4.numberOfLoops = 0;
    }
    
    [player4 prepareToPlay];
    
    self.player5 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL5 error:nil];
    if (self.player5) {
        player5.numberOfLoops = 0;
    }
    
    [player5 prepareToPlay];
    
    self.player6 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL6 error:nil];
    if (self.player6) {
        player6.numberOfLoops = 0;
    }
    
    [player6 prepareToPlay];
    
    self.player7 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL7 error:nil];
    if (self.player7) {
        player7.numberOfLoops = 0;
    }
    
    [player7 prepareToPlay];
    
    self.player8 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL8 error:nil];
    if (self.player8) {
        player8.numberOfLoops = 0;
    }
    
    [player8 prepareToPlay];
    
    self.player9 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL9 error:nil];
    if (self.player9) {
        player9.numberOfLoops = 0;
    }
    
    [player9 prepareToPlay];
    
    self.player10 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL28 error:nil];
    if (self.player10) {
        player10.numberOfLoops = 0;
    }
    
    [player10 prepareToPlay];
    
    
    
    if ([self.lastPress isEqualToString:@"avion"]) {
        [player2 play];
    } else if ([self.lastPress isEqualToString:@"elefante"]) {
        [player3 play];
    } else if ([self.lastPress isEqualToString:@"iguana"]) {
        [player8 play];
    } else if ([self.lastPress isEqualToString:@"unicornio"]) {
        [player9 play];
    } else if ([self.lastPress isEqualToString:@"Aa"]) {
        [player play];
    } else if ([self.lastPress isEqualToString:@"Ee"]) {
        [player4 play];
    } else if ([self.lastPress isEqualToString:@"Ii"]) {
        [player5 play];
    } else if ([self.lastPress isEqualToString:@"Oo"]) {
        [player6 play];
    } else if ([self.lastPress isEqualToString:@"Uu"]) {
        [player7 play];
    } else if ([self.lastPress isEqualToString:@"ostra"]) {
        [player10 play];
    }

    
}

- (IBAction)manPressed:(UIButton *)sender {
    UIButton *manPressed = [UIButton buttonWithType:UIButtonTypeCustom];
    [manPressed setTitle:self.lastPress forState:UIControlStateNormal];
    [self buttonPressed:manPressed];
    
    NSURL *fileURL19 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"aManVoice" ofType:@"mp3"]];
    
    NSURL *fileURL20 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"avionman" ofType:@"mp3"]];
    //        
    NSURL *fileURL21 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"elefanteman" ofType:@"mp3"]];
    //        
    NSURL *fileURL22 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"eManVoice" ofType:@"mp3"]];
    //        
    NSURL *fileURL23 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iManVoice" ofType:@"mp3"]];
    //        
    NSURL *fileURL24 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"oManVoice" ofType:@"mp3"]];
    //        
    NSURL *fileURL25 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"uManVoice" ofType:@"mp3"]];
    //        
    NSURL *fileURL26 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"iguanaman" ofType:@"mp3"]];
    //        
    NSURL *fileURL27 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"unicornioman" ofType:@"mp3"]];
    
    NSURL *fileURL30 = [[NSURL alloc] initFileURLWithPath: [[NSBundle mainBundle] pathForResource:@"osoman" ofType:@"mp3"]];
    
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL19 error:nil];
    if (self.player) {
        player.numberOfLoops = 0;
    }
    
    [player prepareToPlay];
    
    self.player2 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL20 error:nil];
    if (self.player2) {
        player2.numberOfLoops = 0;
    }
    
    [player2 prepareToPlay];
    
    self.player3 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL21 error:nil];
    if (self.player3) {
        player3.numberOfLoops = 0;
    }
    
    [player3 prepareToPlay];
    
    self.player4 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL22 error:nil];
    if (self.player4) {
        player4.numberOfLoops = 0;
    }
    
    [player4 prepareToPlay];
    
    self.player5 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL23 error:nil];
    if (self.player5) {
        player5.numberOfLoops = 0;
    }
    
    [player5 prepareToPlay];
    
    self.player6 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL24 error:nil];
    if (self.player6) {
        player6.numberOfLoops = 0;
    }
    
    [player6 prepareToPlay];
    
    self.player7 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL25 error:nil];
    if (self.player7) {
        player7.numberOfLoops = 0;
    }
    
    [player7 prepareToPlay];
    
    self.player8 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL26 error:nil];
    if (self.player8) {
        player8.numberOfLoops = 0;
    }
    
    [player8 prepareToPlay];
    
    self.player9 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL27 error:nil];
    if (self.player9) {
        player9.numberOfLoops = 0;
    }
    
    [player9 prepareToPlay];
    
    self.player10 = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL30 error:nil];
    if (self.player10) {
        player10.numberOfLoops = 0;
    }
    
    [player10 prepareToPlay];
    
    if ([self.lastPress isEqualToString:@"avion"]) {
        [player2 play];
    } else if ([self.lastPress isEqualToString:@"elefante"]) {
        [player3 play];
    } else if ([self.lastPress isEqualToString:@"iguana"]) {
        [player8 play];
    } else if ([self.lastPress isEqualToString:@"unicornio"]) {
        [player9 play];
    } else if ([self.lastPress isEqualToString:@"Aa"]) {
        [player play];
    } else if ([self.lastPress isEqualToString:@"Ee"]) {
        [player4 play];
    } else if ([self.lastPress isEqualToString:@"Ii"]) {
        [player5 play];
    } else if ([self.lastPress isEqualToString:@"Oo"]) {
        [player6 play];
    } else if ([self.lastPress isEqualToString:@"Uu"]) {
        [player7 play];
    } else if ([self.lastPress isEqualToString:@"ostra"]) {
        [player10 play];
    }


    
}
@end
