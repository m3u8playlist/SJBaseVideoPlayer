#import "SJMediaPlaybackController.h"
@class FSOptions;

NS_ASSUME_NONNULL_BEGIN
FOUNDATION_EXTERN NSErrorDomain const SJFSMediaPlayerErrorDomain;

@interface SJFSMediaPlayer : NSObject<SJMediaPlayer>
- (instancetype)initWithURL:(NSURL *)URL startPosition:(NSTimeInterval)startPosition options:(FSOptions *)ops;

@property (nonatomic, readonly, strong) NSURL *URL;

@property (nonatomic) NSTimeInterval trialEndPosition;

@property (nonatomic) BOOL pauseWhenAppDidEnterBackground;

@property (nonatomic, readonly) BOOL firstVideoFrameRendered;

@property (nonatomic, readonly) UIView *view;

@property (nonatomic) SJVideoGravity videoGravity;
@end
NS_ASSUME_NONNULL_END
