//
//  ViewController.m
//  Sample
//
//  Created by fenghj on 15/10/20.
//  Copyright © 2015年 mob. All rights reserved.
//

#import "ViewController.h"
#import "LogViewController.h"
#import <MOBFoundation/MOBFoundation.h>
#import <MobAPI/MobAPI.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:scrollView];
    
    CGFloat top = 20;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"查询手机号码归属地" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, top, self.view.frame.size.width, 50);
    [btn addTarget:self action:@selector(queryPhoneNumberOwnership:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:btn];
    
    top = btn.frame.origin.y + btn.frame.size.height + 20;
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"查询菜谱分类" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, top, self.view.frame.size.width, 50);
    [btn addTarget:self action:@selector(getCookCategoryList:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:btn];
    
    top = btn.frame.origin.y + btn.frame.size.height + 20;
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"查询菜谱信息" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, top, self.view.frame.size.width, 50);
    [btn addTarget:self action:@selector(searchCookInfo:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:btn];
    
    top = btn.frame.origin.y + btn.frame.size.height + 20;
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"获取菜谱详情信息" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, top, self.view.frame.size.width, 50);
    [btn addTarget:self action:@selector(getCookDetailInfo:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:btn];
    
    top = btn.frame.origin.y + btn.frame.size.height + 20;
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"查询邮编所属地址" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, top, self.view.frame.size.width, 50);
    [btn addTarget:self action:@selector(getPostcodeAddress:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:btn];
    
    top = btn.frame.origin.y + btn.frame.size.height + 20;
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"获取省市区域列表" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, top, self.view.frame.size.width, 50);
    [btn addTarget:self action:@selector(getPCDList:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:btn];
    
    top = btn.frame.origin.y + btn.frame.size.height + 20;
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"查询邮政编码" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, top, self.view.frame.size.width, 50);
    [btn addTarget:self action:@selector(searchPostcode:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:btn];
    
    top = btn.frame.origin.y + btn.frame.size.height + 20;
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"查询天气" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, top, self.view.frame.size.width, 50);
    [btn addTarget:self action:@selector(searchWeather:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:btn];
    
    top = btn.frame.origin.y + btn.frame.size.height + 20;
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"获取城市列表" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, top, self.view.frame.size.width, 50);
    [btn addTarget:self action:@selector(getCityList:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:btn];
    
    top = btn.frame.origin.y + btn.frame.size.height + 20;
    btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"自定义接口" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0.0, top, self.view.frame.size.width, 50);
    [btn addTarget:self action:@selector(customInterfaceCall:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:btn];
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, btn.frame.origin.y + btn.frame.size.height + 20);
    
}

#pragma mark - 接口调用

/**
 *  查询手机号码归属地
 */
- (void)queryPhoneNumberOwnership:(id)sender
{
    [self waitLoading:YES];
    
    __weak ViewController *theControlelr = self;
    [MobAPI sendRequest:[MOBAPhoneRequest ownershipRequestByPhone:@"13333333333"]
               onResult:^(MOBAResponse *response) {
                   
                   NSString *logContent = nil;
                   if (response.error)
                   {
                       logContent = [NSString stringWithFormat:@"request error!\n%@", response.error];
                       NSLog(@"%@", logContent);
                   }
                   else
                   {
                       logContent = [NSString stringWithFormat:@"request success!\n%@", [MOBFJson jsonStringFromObject:response.responder]];
                       NSLog(@"%@", logContent);
                   }
                   
                   [theControlelr showLog:logContent];
                   
               }];
}

/**
 *  获取菜谱分类
 */
- (void)getCookCategoryList:(id)sender
{
    [self waitLoading:YES];
    
    __weak ViewController *theControlelr = self;
    [MobAPI sendRequest:[MOBACookRequest categoryRequestById:nil]
               onResult:^(MOBAResponse *response) {
                   
                   NSString *logContent = nil;
                   if (response.error)
                   {
                       logContent = [NSString stringWithFormat:@"request error!\n%@", response.error];
                       NSLog(@"%@", logContent);
                   }
                   else
                   {
                       logContent = [NSString stringWithFormat:@"request success!\n%@", [MOBFJson jsonStringFromObject:response.responder]];
                       NSLog(@"%@", logContent);
                   }
                   
                   [theControlelr showLog:logContent];
                   
               }];
}

/**
 *  查询菜谱信息
 */
- (void)searchCookInfo:(id)sender
{
    [self waitLoading:YES];
    
    __weak ViewController *theControlelr = self;
    [MobAPI sendRequest:[MOBACookRequest searchRequestByCid:nil name:nil page:0 size:0]
               onResult:^(MOBAResponse *response) {
                   
                   NSString *logContent = nil;
                   if (response.error)
                   {
                       logContent = [NSString stringWithFormat:@"request error!\n%@", response.error];
                       NSLog(@"%@", logContent);
                   }
                   else
                   {
                       logContent = [NSString stringWithFormat:@"request success!\n%@", [MOBFJson jsonStringFromObject:response.responder]];
                       NSLog(@"%@", logContent);
                   }
                   
                   [theControlelr showLog:logContent];
                   
               }];
}

/**
 *  查询菜谱详情信息
 */
- (void)getCookDetailInfo:(id)sender
{
    [self waitLoading:YES];
    
    __weak ViewController *theControlelr = self;
    [MobAPI sendRequest:[MOBACookRequest infoRequestById:@"00100010560000040337"]
               onResult:^(MOBAResponse *response) {
                   
                   NSString *logContent = nil;
                   if (response.error)
                   {
                       logContent = [NSString stringWithFormat:@"request error!\n%@", response.error];
                       NSLog(@"%@", logContent);
                   }
                   else
                   {
                       logContent = [NSString stringWithFormat:@"request success!\n%@", [MOBFJson jsonStringFromObject:response.responder]];
                       NSLog(@"%@", logContent);
                   }
                   
                   [theControlelr showLog:logContent];
                   
               }];
}

/**
 *  获取邮编所属地址
 */
- (void)getPostcodeAddress:(id)sender
{
    [self waitLoading:YES];
    
    __weak ViewController *theControlelr = self;
    [MobAPI sendRequest:[MOBAPostcodeRequest addressRequestByPostcode:@"200030"]
               onResult:^(MOBAResponse *response) {
                   
                   NSString *logContent = nil;
                   if (response.error)
                   {
                       logContent = [NSString stringWithFormat:@"request error!\n%@", response.error];
                       NSLog(@"%@", logContent);
                   }
                   else
                   {
                       logContent = [NSString stringWithFormat:@"request success!\n%@", [MOBFJson jsonStringFromObject:response.responder]];
                       NSLog(@"%@", logContent);
                   }
                   
                   [theControlelr showLog:logContent];
                   
               }];
}

/**
 *  获取省市区域列表
 */
- (void)getPCDList:(id)sender
{
    [self waitLoading:YES];
    
    __weak ViewController *theControlelr = self;
    [MobAPI sendRequest:[MOBAPostcodeRequest pcdRequest]
               onResult:^(MOBAResponse *response) {
                   
                   NSString *logContent = nil;
                   if (response.error)
                   {
                       logContent = [NSString stringWithFormat:@"request error!\n%@", response.error];
                       NSLog(@"%@", logContent);
                   }
                   else
                   {
                       logContent = [NSString stringWithFormat:@"request success!\n%@", [MOBFJson jsonStringFromObject:response.responder]];
                       NSLog(@"%@", logContent);
                   }
                   
                   [theControlelr showLog:logContent];
                   
               }];
}

/**
 *  查询邮政编码
 */
- (void)searchPostcode:(id)sender
{
    [self waitLoading:YES];
    
    __weak ViewController *theControlelr = self;
    [MobAPI sendRequest:[MOBAPostcodeRequest searchRequestByPid:@"40" cid:@"4014" q:nil]
               onResult:^(MOBAResponse *response) {
                   
                   NSString *logContent = nil;
                   if (response.error)
                   {
                       logContent = [NSString stringWithFormat:@"request error!\n%@", response.error];
                       NSLog(@"%@", logContent);
                   }
                   else
                   {
                       logContent = [NSString stringWithFormat:@"request success!\n%@", [MOBFJson jsonStringFromObject:response.responder]];
                       NSLog(@"%@", logContent);
                   }
                   
                   [theControlelr showLog:logContent];
                   
               }];
}

/**
 *  查询天气
 */
- (void)searchWeather:(id)sender
{
    [self waitLoading:YES];
    
    __weak ViewController *theControlelr = self;
    [MobAPI sendRequest:[MOBAWeatherRequest searchRequestByCityName:@"广州" province:nil]
               onResult:^(MOBAResponse *response) {
                   
                   NSString *logContent = nil;
                   if (response.error)
                   {
                       logContent = [NSString stringWithFormat:@"request error!\n%@", response.error];
                       NSLog(@"%@", logContent);
                   }
                   else
                   {
                       logContent = [NSString stringWithFormat:@"request success!\n%@", [MOBFJson jsonStringFromObject:response.responder]];
                       NSLog(@"%@", logContent);
                   }
                   
                   [theControlelr showLog:logContent];
                   
               }];
}

/**
 *  获取城市列表，该接口返回数据供查询天气时使用。
 */
- (void)getCityList:(id)sender
{
    [self waitLoading:YES];
    
    __weak ViewController *theControlelr = self;
    [MobAPI sendRequest:[MOBAWeatherRequest citysRequest]
               onResult:^(MOBAResponse *response) {
                   
                   NSString *logContent = nil;
                   if (response.error)
                   {
                       logContent = [NSString stringWithFormat:@"request error!\n%@", response.error];
                       NSLog(@"%@", logContent);
                   }
                   else
                   {
                       logContent = [NSString stringWithFormat:@"request success!\n%@", [MOBFJson jsonStringFromObject:response.responder]];
                       NSLog(@"%@", logContent);
                   }
                   
                   [theControlelr showLog:logContent];
                   
               }];
}

/**
 *  自定义请求接口
 */
- (void)customInterfaceCall:(id)sender
{
    [self waitLoading:YES];
    
    __weak ViewController *theController = self;
    [MobAPI sendRequestWithInterface:@"/weather/query"
                               param:[NSMutableDictionary dictionaryWithObjectsAndKeys:
                                      @"广州", @"cityname",
                                      @"", @"province",
                                      nil]
                            onResult:^(MOBAResponse *response) {
                                NSString *logContent = nil;
                                if (response.error)
                                {
                                    logContent = [NSString stringWithFormat:@"request error!\n%@", response.error];
                                    NSLog(@"%@", logContent);
                                }
                                else
                                {
                                    logContent = [NSString stringWithFormat:@"request success!\n%@", [MOBFJson jsonStringFromObject:response.responder]];
                                    NSLog(@"%@", logContent);
                                }
                                
                                [theController showLog:logContent];
                            }];
}

#pragma mark - Private

- (void)waitLoading:(BOOL)flag
{
    static UIView *loadingView = nil;
    if (!loadingView)
    {
        loadingView = [[UIView alloc] initWithFrame:self.view.bounds];
        loadingView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        loadingView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        [indicatorView sizeToFit];
        indicatorView.frame = CGRectMake((loadingView.frame.size.width - indicatorView.frame.size.width) / 2, (loadingView.frame.size.height - indicatorView.frame.size.height) / 2, indicatorView.frame.size.width, indicatorView.frame.size.height);
        indicatorView.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleRightMargin;
        [indicatorView startAnimating];
        [loadingView addSubview:indicatorView];
        
        [self.view addSubview:loadingView];
    }
    
    loadingView.hidden = !flag;
}

- (void)showLog:(NSString *)log
{
    [self waitLoading:NO];
    
    LogViewController *vc = [[LogViewController alloc] init];
    [vc setLog:log];
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nvc animated:YES completion:nil];
}

@end
