//
//  KBProgressHUD.h
//  YoungPin
//
//  Created by BIMiracle on 2017/7/27.
//  Copyright © 2017年 BIMiracle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KBProgressHUD : UIView

+ (void)show;
+ (void)showWithStatus:(NSString*)status;

+ (void)showProgress:(float)progress;
+ (void)showProgress:(float)progress status:(NSString*)status;

+ (void)showStatus:(NSString*)status;
+ (void)setStatus:(NSString*)status; // change the HUD loading status while it's showing

// stops the activity indicator, shows a glyph + status, and dismisses the HUD a little bit later
+ (void)showInfoWithStatus:(NSString*)status;
+ (void)showSuccessWithStatus:(NSString*)status;
+ (void)showErrorWithStatus:(NSString*)status;

// shows a image + status, use 28x28 white PNGs
+ (void)showImage:(UIImage*)image status:(NSString*)status;
+ (void)dismiss;
+ (void)dismissWithDelay:(NSTimeInterval)delay;

+ (NSTimeInterval)displayDurationForString:(NSString*)string;

+ (void)setContainerView:(UIView*)containerView;

@end
