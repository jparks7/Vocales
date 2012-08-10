//
//  ViewController.h
//  Vocales
//
//  Created by James Parks on 8/7/12.
//  Copyright (c) 2012 AEIOU Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) MPMoviePlayerController * openPlayer;
@property (weak, nonatomic) IBOutlet UIButton *aButtonOutlet;
@property (nonatomic, strong) IBOutlet UISwipeGestureRecognizer *swipeRightRecognizer;


- (IBAction)buttonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *unicornioOutlet;
@property (weak, nonatomic) IBOutlet UIButton *iguanaOutlet;

@property (weak, nonatomic) IBOutlet UIButton *oButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *iButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *eButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *uButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *avionOutlet;
@property (weak, nonatomic) IBOutlet UIButton *elefanteOutlet;
@property (weak, nonatomic) IBOutlet UIButton *manOutlet;
@property (weak, nonatomic) IBOutlet UIButton *babyOutlet;
@property (weak, nonatomic) IBOutlet UIButton *womanOutlet;
@property (weak, nonatomic) IBOutlet UIButton *ostraOutlet;

- (IBAction)homeButtonPressed:(UIButton *)sender;

@property (strong, nonatomic) NSString *lastPress;
@property (weak, nonatomic) IBOutlet UIButton *homeButton;

- (IBAction)womanPressed:(UIButton *)sender;
- (IBAction)babyPressed:(UIButton *)sender;
- (IBAction)manPressed:(UIButton *)sender;

- (IBAction)handleSwipeFrom:(UISwipeGestureRecognizer *)recognizer;

@end
