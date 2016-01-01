//
//  Playlist.h
//  Algorhythm
//
//  Created by Shashank Vaibhav on 31/12/2015.
//  Copyright © 2015 Cube inc. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;


@interface MusicLibrary : NSObject

@property(strong, nonatomic) NSArray *library;

@end
