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

@dynamic gdtRequestManager;


- (GDTRequestManager *)gdtRequestManager {
    GDTRequestManager *gdtRequestManager = objc_getAssociatedObject(self, _cmd);
    if (!gdtRequestManager) {
        gdtRequestManager = [[GDTRequestManager alloc] initWithController:self];
        self.gdtRequestManager = gdtRequestManager;
    }
    return gdtRequestManager;
}

- (void)setGdtRequestManager:(GDTRequestManager *)gdtRequestManager {
    objc_setAssociatedObject(self, @selector(gdtRequestManager), gdtRequestManager, OBJC_ASSOCIATION_RETAIN);
}

@end
