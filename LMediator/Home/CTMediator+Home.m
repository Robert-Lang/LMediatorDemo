//
//  CTMediator+Home.m
//  LMediator
//
//  Created by lang on 2021/9/28.
//

#import "CTMediator+Home.h"
NSString * const kCTMediatorTarget_Home = @"Home";
NSString * const kCTMediatorActionNativeFetch_HomeViewController = @"HomeViewController";

@implementation CTMediator (Home)
-(UIViewController *)CTMediator_VCForHome {
    
    UIViewController * vc = [self performTarget:kCTMediatorTarget_Home
                                         action:kCTMediatorActionNativeFetch_HomeViewController
                                         params:@{@"key":kCTMediatorTarget_Home}
                              shouldCacheTarget:NO];
    
    if ([vc isKindOfClass:UIViewController.class]) {
        return vc;
    }else
    {
        return UIViewController.alloc.init;
    }
}

@end
