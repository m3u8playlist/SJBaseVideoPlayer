#import <Foundation/Foundation.h>
#import "SJMediaPlaybackController.h"
#import "SJFSMediaPlayer.h"
@class FSOptions;

NS_ASSUME_NONNULL_BEGIN
@interface SJFSMediaPlaybackController : SJMediaPlaybackController

@property (nonatomic, strong, null_resettable) FSOptions *options;

@property (nonatomic, strong, readonly, nullable) SJFSMediaPlayer *currentPlayer;

@end
NS_ASSUME_NONNULL_END
