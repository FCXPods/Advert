//
//  UIViewController+Advert.m
//  FCXAdvert
//
//  Created by 冯 传祥 on 16/1/23.
//  Copyright © 2016年 冯 传祥. All rights reserved.
//

#import "UIViewController+Advert.h"
#import <objc/runtime.h>

@implementation UIViewController (Advert)



- (GDTRequestManager *)gdtRequestManager {
    
    _gdtRequestManager = objc_getAssociatedObject(self, _cmd);
    if (!_gdtRequestManager) {NSLog(@"set");
        _gdtRequestManager = [[GDTRequestManager alloc] initWithController:self];
        objc_setAssociatedObject(self, _cmd, _gdtRequestManager, OBJC_ASSOCIATION_RETAIN);
    }
    return _gdtRequestManager;
}

@end
