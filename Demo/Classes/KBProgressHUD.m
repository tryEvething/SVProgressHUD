//
//  KBProgressHUD.m
//  YoungPin
//
//  Created by BIMiracle on 2017/7/27.
//  Copyright © 2017年 BIMiracle. All rights reserved.
//

#import "KBProgressHUD.h"
#import "SVProgressHUD.h"
//#import "UIColor+KBExtension.h"

@implementation KBProgressHUD

+ (void)load{
//    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
//    [SVProgressHUD setForegroundColor:KBColorHex(#21242A)];
//    [SVProgressHUD setBackgroundColor:[UIColor whiteColor]];
//    [SVProgressHUD setBackgroundLayerColor:[UIColor colorWithRGBA:0 g:0 b:0 a:0.5]];
    
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleLight];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    
//    [SVProgressHUD setCornerRadius:4];
    
    [SVProgressHUD setMinimumDismissTimeInterval:1.5];
    
    [SVProgressHUD setMaximumDismissTimeInterval:1.5];
}

+ (void)show {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    [SVProgressHUD show];
}

+ (void)showWithStatus:(NSString*)status {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    [SVProgressHUD showWithStatus:status];
}

+ (void)showProgress:(float)progress {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    [SVProgressHUD showProgress:progress];
}

+ (void)showProgress:(float)progress status:(NSString*)status {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    [SVProgressHUD showProgress:progress status:status];
}

+ (void)showStatus:(NSString *)status{
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD showStatus:status];
}

+ (void)setStatus:(NSString*)status {
    [SVProgressHUD setStatus:status];
}

+ (void)showInfoWithStatus:(NSString*)status {
//    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD showInfoWithStatus:status];
}

+ (void)showSuccessWithStatus:(NSString*)status {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
	[SVProgressHUD showSuccessWithStatus:status];
}

+ (void)showErrorWithStatus:(NSString*)status{
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD showErrorWithStatus:status];
}

+ (void)showImage:(UIImage*)image status:(NSString*)status {
//    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD showImage:image status:status];
}

+ (void)dismiss {
    [SVProgressHUD dismiss];
}

+ (void)dismissWithDelay:(NSTimeInterval)delay{
    [SVProgressHUD dismissWithDelay:delay];
}

+ (NSTimeInterval)displayDurationForString:(NSString*)string {
    return [SVProgressHUD displayDurationForString:string];
}

+ (void)setContainerView:(UIView*)containerView{
    [SVProgressHUD setContainerView:containerView];
}



@end
