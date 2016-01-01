//
//  Playlist.m
//  Algorhythm
//
//  Created by Shashank Vaibhav on 31/12/2015.
//  Copyright © 2015 Cube inc. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

- (instancetype)initWithIndex:(NSUInteger) index
{
    self = [super init];
    if (self) {
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        NSArray *library = musicLibrary.library;
        NSDictionary *playlistDictionary = library[index];
        
        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        
        NSString *icon = [playlistDictionary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:icon];
        
        NSString *largeIcon = [playlistDictionary objectForKey:kLargeIcon];
        _playlistLargeIcon = [UIImage imageNamed:largeIcon];
        
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
        
        
    }
    return self;
}

-(UIColor *)rgbColorFromDictionary:(NSDictionary *) colorDictionary{
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
