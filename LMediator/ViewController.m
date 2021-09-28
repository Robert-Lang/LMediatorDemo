//
//  ViewController.m
//  LMediator
//
//  Created by lang on 2021/6/30.
//

#import "ViewController.h"
#import "Category.h"

NSString * const kCellIdentifier = @"kCellIdentifier";

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic , strong) UITableView * tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.tableView];
    
    NSString * string = @"https://www.baidu.com/order?id=10&user=abc";
    NSURLComponents * url = [[NSURLComponents alloc] initWithString:string];
    
    
    NSMutableDictionary * dic = [NSMutableDictionary dictionary];
    
    dic[@"_"] = @"1";
    
}


#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        UIViewController *viewController = [[CTMediator sharedInstance] CTMediator_VCForItemListInfo];
        [[CTMediator sharedInstance] presentViewController:viewController animated:YES completion:nil];
    }
    
    if (indexPath.row == 1) {
        UIViewController *viewController = [[CTMediator sharedInstance] CTMediator_VCForItemListInfo];
        [[CTMediator sharedInstance] pushViewController:viewController animated:YES];
    }
    if (indexPath.row == 2) {
        UIViewController *viewController = [[CTMediator sharedInstance] CTMediator_VCForOrder];
        [[CTMediator sharedInstance] presentViewController:viewController animated:YES completion:nil];
    }
    
    if (indexPath.row == 3) {
        UIViewController *viewController = [[CTMediator sharedInstance] CTMediator_VCForOrder];
        [[CTMediator sharedInstance] pushViewController:viewController animated:YES];
    }
    if (indexPath.row == 4) {
        UIViewController *viewController = [[CTMediator sharedInstance] CTMediator_VCForHome];
        [[CTMediator sharedInstance] presentViewController:viewController animated:YES completion:nil];
    }
    
    if (indexPath.row == 5) {
        UIViewController *viewController = [[CTMediator sharedInstance] CTMediator_VCForHome];
        [[CTMediator sharedInstance] pushViewController:viewController animated:YES];
    }
//
//    if (indexPath.row == 2) {
//        // 这种场景下，很明显是需要被present的，所以不必返回实例，mediator直接present了
//        [[CTMediator sharedInstance] CTMediator_presentImage:[UIImage imageNamed:@"image"]];
//    }
//
//    if (indexPath.row == 3) {
//        // 这种场景下，参数有问题，因此需要在流程中做好处理
//        [[CTMediator sharedInstance] CTMediator_presentImage:nil];
//    }
//
//    if (indexPath.row == 4) {
//        [[CTMediator sharedInstance] CTMediator_showAlertWithMessage:@"casa" cancelAction:nil confirmAction:^(NSDictionary *info) {
//            // 做你想做的事
//        }];
//    }
//
//    if (indexPath.row == 5) {
//        TableViewController *tableViewController = [[TableViewController alloc] init];
//        [self presentViewController:tableViewController animated:YES completion:nil];
//    }
//
//    if (indexPath.row == 6) {
//        [[CTMediator sharedInstance] performTarget:@"InvalidTarget" action:@"InvalidAction" params:nil shouldCacheTarget:NO];
//    }
}

#pragma mark - getters and setters
- (UITableView *)tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellIdentifier];
    }
    return _tableView;
}

- (NSArray *)dataSource
{
    if (_dataSource == nil) {
        _dataSource = @[@"present itemList view controller",
                        @"push itemList view controller",
                        @"present order view controller",
                        @"push order view controller",
                        @"present home view controller",
                        @"push home view controller",];
    }
    return _dataSource;
}


@end
