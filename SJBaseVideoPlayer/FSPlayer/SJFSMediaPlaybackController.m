#import "SJFSMediaPlaybackController.h"
#import "SJFSMediaPlayerLayerView.h"

#if __has_include(<SJUIKit/SJRunLoopTaskQueue.h>)
#import <SJUIKit/SJRunLoopTaskQueue.h>
#else
#import "SJRunLoopTaskQueue.h"
#endif

//#if __has_include(<IJKMediaFramework/IJKMediaFramework.h>)
//#import <IJKMediaFramework/IJKMediaFramework.h>
//#elif __has_include(<IJKMediaFrameworkWithSSL/IJKMediaFrameworkWithSSL.h>)
//#import <IJKMediaFrameworkWithSSL/IJKMediaFrameworkWithSSL.h>
//#else
//#import <IJKMediaPlayerKit/IJKMediaPlayerKit.h>
//#endif

NS_ASSUME_NONNULL_BEGIN
@interface SJFSMediaPlaybackController ()

@end

@implementation SJFSMediaPlaybackController
@dynamic currentPlayer;

- (FSOptions *)options {
    if ( _options == nil ) _options = FSOptions.optionsByDefault;
    return _options;
}

- (void)playerWithMedia:(SJVideoPlayerURLAsset *)media completionHandler:(void (^)(id<SJMediaPlayer> _Nullable))completionHandler {
    __weak typeof(self) _self = self;
    SJRunLoopTaskQueue.main.enqueue(^{
        __strong typeof(_self) self = _self;
        if ( !self ) return;
        SJFSMediaPlayer *player = [SJFSMediaPlayer.alloc initWithURL:media.mediaURL startPosition:media.startPosition options:self.options];
        player.pauseWhenAppDidEnterBackground = self.pauseWhenAppDidEnterBackground;
        if ( completionHandler ) completionHandler(player);
    });
}

- (UIView<SJMediaPlayerView> *)playerViewWithPlayer:(SJFSMediaPlayer *)player {
    return [SJFSMediaPlayerLayerView.alloc initWithPlayer:player];
}

- (void)setPauseWhenAppDidEnterBackground:(BOOL)pauseWhenAppDidEnterBackground {
    [super setPauseWhenAppDidEnterBackground:pauseWhenAppDidEnterBackground];
    self.currentPlayer.pauseWhenAppDidEnterBackground = pauseWhenAppDidEnterBackground;
}

#pragma mark -

- (void)setMinBufferedDuration:(NSTimeInterval)minBufferedDuration {
#ifdef DEBUG
    NSLog(@"%d \t %s \t 未实现该方法!", (int)__LINE__, __func__);
#endif
}

- (NSTimeInterval)durationWatched {
#ifdef DEBUG
    NSLog(@"%d \t %s \t 未实现该方法!", (int)__LINE__, __func__);
#endif
    return 0;
}

- (SJPlaybackType)playbackType {
#ifdef DEBUG
    NSLog(@"%d \t %s \t 未实现该方法!", (int)__LINE__, __func__);
#endif
    return SJPlaybackTypeUnknown;
}
@end
NS_ASSUME_NONNULL_END
