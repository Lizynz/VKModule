#import <UIKit/UIViewController.h>
#import "VKMenuModuleViewController.h"

@class UIViewController;

@protocol CCUIContentModule <NSObject>
@end

@protocol CCUIContentModuleContentViewController <NSObject>
@property (nonatomic,readonly) double preferredExpandedContentHeight;
@property (nonatomic,readonly) double preferredExpandedContentWidth;
@property (nonatomic,readonly) BOOL providesOwnPlatter;
@optional
-(BOOL)shouldBeginTransitionToExpandedContentModule;
-(void)willResignActive;
-(void)willBecomeActive;
-(void)willTransitionToExpandedContentMode:(BOOL)arg1;
-(BOOL)shouldFinishTransitionToExpandedContentModule;
-(void)didTransitionToExpandedContentMode:(BOOL)arg1;
-(BOOL)canDismissPresentedContent;
-(void)dismissPresentedContentAnimated:(BOOL)arg1 completion:(/*^block*/id)arg2;
-(double)preferredExpandedContentWidth;
-(BOOL)providesOwnPlatter;
-(void)controlCenterWillPresent;
-(void)controlCenterDidDismiss;

@required
-(double)preferredExpandedContentHeight;

@end

@interface VKMenuModule : NSObject <CCUIContentModule>
@property (strong, nonatomic) VKMenuModuleViewController *contentViewController;
@end
