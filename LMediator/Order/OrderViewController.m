//
//  OrderViewController.m
//  LMediator
//
//  Created by lang on 2021/6/30.
//

#import "OrderViewController.h"

@interface OrderViewController ()

@end

@implementation OrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    NSString * btnT = @"home";
    NSMutableAttributedString * att = [[NSMutableAttributedString alloc] initWithString:btnT];
    [att addAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:14 weight:UIFontWeightRegular],
                         NSForegroundColorAttributeName : UIColor.blueColor}
                 range:NSMakeRange(0, btnT.length)];
    
    [btn setAttributedTitle:att forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 80, 30);
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

}

-(void)btnClick:(id)sender{
    
    UIViewController *viewController = [[CTMediator sharedInstance] CTMediator_VCForHome];
    [[CTMediator sharedInstance] pushViewController:viewController animated:YES];
    
}


@end
