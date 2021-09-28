//
//  CTMediator+ItemListInfo.m
//  LMediator
//
//  Created by lang on 2021/6/30.
//

#import "CTMediator+ItemListInfo.h"

NSString * const kCTMediatorTarget_ItemListInfo = @"ItemListInfo";
NSString * const kCTMediatorActionNativeFetch_ItemListInfoViewController = @"ItemListInfoViewController";


@implementation CTMediator (ItemListInfo)
-(UIViewController *)CTMediator_VCForItemListInfo{
    UIViewController * vc = [self performTarget:kCTMediatorTarget_ItemListInfo
                                         action:kCTMediatorActionNativeFetch_ItemListInfoViewController
                                         params:@{@"key":kCTMediatorTarget_ItemListInfo}
                              shouldCacheTarget:NO];
    
    if ([vc isKindOfClass:UIViewController.class]) {
        return vc;
    }else
    {
        return UIViewController.alloc.init;
    }
}
@end
