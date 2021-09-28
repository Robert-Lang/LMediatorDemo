//
//  Target_ItemListInfo.m
//  LMediator
//
//  Created by lang on 2021/6/30.
//

#import "Target_ItemListInfo.h"
#import "ItemListInfoViewController.h"
@implementation Target_ItemListInfo
-(UIViewController *)Action_ItemListInfoViewController:(NSDictionary *)params{
    
    ItemListInfoViewController * vc = ItemListInfoViewController.alloc.init;
    vc.title = params[@"key"];
    return vc;
}
@end
