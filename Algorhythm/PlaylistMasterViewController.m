//
//  ViewController.m
//  Algorhythm
//
//  Created by Shashank Vaibhav on 31/12/2015.
//  Copyright © 2015 Cube inc. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for(NSUInteger i=0; i< self.playlistImageViews.count; i++){
        Playlist *playList = [[Playlist alloc] initWithIndex:i];
        UIImageView *playlistImageView = self.playlistImageViews[i];
        playlistImageView.image = playList.playlistIcon;
        playlistImageView.backgroundColor = playList.backgroundColor;
        
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqual:@"showPlaylistDetail"]){
        
        UIImageView *playlistImageView = (UIImageView *)[sender view];
        
        if ([self.playlistImageViews containsObject:playlistImageView]){
            
            NSUInteger i = [self.playlistImageViews indexOfObject:playlistImageView];
            
            
            PlaylistDetailViewController *detail = (PlaylistDetailViewController *)segue.destinationViewController;
            detail.playlist = [[Playlist alloc] initWithIndex:i];
        }
    }
}
- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}

@end

























