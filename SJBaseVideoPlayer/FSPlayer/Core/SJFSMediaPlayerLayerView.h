#import <UIKit/UIKit.h>
#import "SJMediaPlaybackController.h"
#import "SJFSMediaPlayer.h"

NS_ASSUME_NONNULL_BEGIN

@interface SJFSMediaPlayerLayerView : UIView<SJMediaPlayerView>
- (instancetype)initWithPlayer:(SJFSMediaPlayer *)player;

@property (nonatomic, strong, readonly) SJFSMediaPlayer *player;

@property (nonatomic) SJVideoGravity videoGravity;
@property (nonatomic, readonly, getter=isReadyForDisplay) BOOL readyForDisplay;

@end

NS_ASSUME_NONNULL_END
