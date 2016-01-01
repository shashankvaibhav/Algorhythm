//
//  Playlist.h
//  Algorhythm
//
//  Created by Shashank Vaibhav on 31/12/2015.
//  Copyright © 2015 Cube inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface Playlist : NSObject

@property(strong, nonatomic) NSString *playlistTitle;
@property(strong, nonatomic) NSString *playlistDescription;
@property(strong, nonatomic) UIImage *playlistIcon;
@property(strong, nonatomic) UIImage *playlistLargeIcon;
@property(strong, nonatomic) NSArray *playlistArtists;
@property(strong, nonatomic) UIColor *backgroundColor;


- (instancetype)initWithIndex:(NSUInteger) index;

@end
