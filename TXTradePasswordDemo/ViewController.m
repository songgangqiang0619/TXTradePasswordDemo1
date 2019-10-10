//
//  ViewController.m
//  TXTradePasswordDemo
//
//  Created by --- on 16/1/3.
//  Copyright © 2016年 吴天祥. All rights reserved.
//

#import "ViewController.h"
#import "TXTradePasswordView.h"

@interface ViewController ()<TXTradePasswordViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    ///  TF
//    UITextField *TFs = [[UITextField alloc]init];
//    TFs.frame = CGRectMake(0, 0, 0, 0);
//    TFs.keyboardType=UIKeyboardTypeNumberPad;
//    [TFs becomeFirstResponder];
//    [self.view addSubview:TFs];
    
    self.view.backgroundColor = [UIColor lightGrayColor];

    TXTradePasswordView *TXView = [[TXTradePasswordView alloc]initWithFrame:CGRectMake(0, 100,SCREEN_WIDTH, SCREEN_HEIGHT) WithTitle:@"请输入交易密码"];
    TXView.backgroundColor = [UIColor whiteColor];
    TXView.TXTradePasswordDelegate = self;
    
    if (![TXView.TF becomeFirstResponder])
    {
        //成为第一响应者。弹出键盘
        [TXView.TF becomeFirstResponder];
    }
    TXView.TF.inputAccessoryView = [self addToolbar];

    [self.view addSubview:TXView];
    
}

- (UIToolbar *)addToolbar
{
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 45)];
    toolbar.backgroundColor = [UIColor whiteColor];
    
    UILabel *qiandaoKeyBoard = [[UILabel alloc]initWithFrame:CGRectMake(100, 10, 100, 30)];
       qiandaoKeyBoard.text = @"乾道金融安全输入";
       qiandaoKeyBoard.textColor = [UIColor redColor];
       qiandaoKeyBoard.font = [UIFont systemFontOfSize:15];
       [toolbar addSubview:qiandaoKeyBoard];
    
//       [qiandaoKeyBoard mas_makeConstraints:^(MASConstraintMaker *make) {
//           make.top.equalTo(backView).offset(10);
//           make.left.equalTo(backView).offset(22.5 + 17);
//           make.height.equalTo(@30);
//           make.width.equalTo(150);
//       }];
    
//    UIBarButtonItem *prevButton = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(prevTextField)];
//    [prevButton setTintColor:[UIColor blueColor]];
//    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
//    UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(textFieldDone)];
//    toolbar.items = @[prevButton, space, bar];
    return toolbar;
}

#pragma mark  密码输入结束后调用此方法
-(void)TXTradePasswordView:(TXTradePasswordView *)view WithPasswordString:(NSString *)Password
{
    NSLog(@"密码 = %@",Password);
//    [self showMessage:[NSString stringWithFormat:@"密码为 : %@",Password] duration:3];
}

#pragma mark  提示条
//-(void)showMessage:(NSString *)message duration:(NSTimeInterval)time
//{
//    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
//
//    UIWindow * window = [UIApplication sharedApplication].keyWindow;
//    UIView *showview =  [[UIView alloc]init];
//    showview.backgroundColor = [UIColor grayColor];
//    showview.frame = CGRectMake(1, 1, 1, 1);
//    showview.alpha = 1.0f;
//    showview.layer.cornerRadius = 5.0f;
//    showview.layer.masksToBounds = YES;
//    [window addSubview:showview];
//
//    UILabel *label = [[UILabel alloc]init];
//    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
//    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
//
//    NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:15.f],
//                                 NSParagraphStyleAttributeName:paragraphStyle.copy};
//
//    CGSize labelSize = [message boundingRectWithSize:CGSizeMake(207, 999)
//                                             options:NSStringDrawingUsesLineFragmentOrigin
//                                          attributes:attributes context:nil].size;
//
//    label.frame = CGRectMake(10, 5, labelSize.width +20, labelSize.height);
//    label.text = message;
//    label.textColor = [UIColor whiteColor];
//    label.textAlignment = 1;
//    label.backgroundColor = [UIColor clearColor];
//    label.font = [UIFont boldSystemFontOfSize:15];
//    [showview addSubview:label];
//
//    showview.frame = CGRectMake((screenSize.width - labelSize.width - 20)/2,
//                                screenSize.height - 300,
//                                labelSize.width+40,
//                                labelSize.height+10);
//    [UIView animateWithDuration:time animations:^{
//        showview.alpha = 0;
//    } completion:^(BOOL finished) {
//        [showview removeFromSuperview];
//    }];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
