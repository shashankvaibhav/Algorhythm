//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by Shashank Vaibhav on 31/12/2015.
//  Copyright © 2015 Cube inc. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if(self.playlist){
        self.playlistCoverImage.image = self.playlist.playlistLargeIcon;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        
        self.playlistArtist0.text = self.playlist.playlistArtists[0];
        self.playlistArtist1.text = self.playlist.playlistArtists[1];
        self.playlistArtist2.text = self.playlist.playlistArtists[2];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
