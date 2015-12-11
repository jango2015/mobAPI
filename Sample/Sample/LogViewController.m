//
//  LogViewController.m
//  Sample
//
//  Created by fenghj on 15/10/28.
//  Copyright © 2015年 mob. All rights reserved.
//

#import "LogViewController.h"
#import <MOBFoundation/MOBFoundation.h>

@interface LogViewController ()

@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, copy) NSString *logContent;

@end

@implementation LogViewController

- (instancetype) init
{
    if (self = [super init])
    {
        self.title = @"输出日志";
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneButtonClickHandler:)];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if ([MOBFDevice versionCompare:@"7.0"] >= 0)
    {
        self.extendedLayoutIncludesOpaqueBars = YES;
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.textView.editable = NO;
    self.textView.font = [UIFont systemFontOfSize:14];
    self.textView.text = self.logContent;
    self.textView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:self.textView];
}

- (void)setLog:(NSString *)content
{
    self.logContent = content;
    
    if (self.isViewLoaded)
    {
        self.textView.text = self.logContent;
    }
}

#pragma mark - Private

- (void)doneButtonClickHandler:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
