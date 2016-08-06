//
//  ViewController.m
//  CheckNumbers
//
//  Created by 安恩杨 on 16/4/26.
//  Copyright © 2016年 安恩杨. All rights reserved.
//

#import "ViewController.h"
#import "StrokeSet.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *labelWritingPad;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCountsInput;
//@property (weak, nonatomic) IBOutlet UILabel * checkResult;

@end


@implementation ViewController

StrokeSet * set;
int countPresent = 12;

- (void)initializeSubviews
{
    set = [[StrokeSet alloc]init];
    
    self.labelWritingPad = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 160, 160)];
    self.labelWritingPad.center = CGPointMake(self.view.center.x, 0.5 * self.view.center.y);
    self.labelWritingPad.font = [UIFont fontWithName:@"Georgia" size:100];
//    self.labelWritingPad.backgroundColor = [UIColor orangeColor];
    self.labelWritingPad.textColor = [UIColor grayColor];
    self.labelWritingPad.textAlignment = NSTextAlignmentCenter;
    self.labelWritingPad.text = @"登";
    [self.view addSubview:self.labelWritingPad];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    [self initializeSubviews];
    
}

- (IBAction)clickNext:(id)sender
{
    UIAlertController *alert;
    
    int countInput = [self.textFieldCountsInput.text intValue];
    if(countInput == countPresent)
         alert = [UIAlertController alertControllerWithTitle:@"正确" message:@"看来你很无聊" preferredStyle:UIAlertControllerStyleAlert];
    else
        alert = [UIAlertController alertControllerWithTitle:@"错了" message:@"你好像很忙" preferredStyle:UIAlertControllerStyleAlert];
   
    UIAlertAction *againAction = [UIAlertAction actionWithTitle:@"再来一次" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
//        NSLog(@"ok");
    }];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"下一个" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
//        NSLog(@"ok");
        StrokeModel * model = [[StrokeModel alloc]init];
        model = [set getOneStroke];
        self.labelWritingPad.text = model->stroke;
        countPresent = model->count;
    }];
    
    [alert addAction:againAction];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
    
    
    [self.textFieldCountsInput setText:@""];
}

- (void)callbackVerifiedCorrect
{
    
}

- (void)callbackVerifiedWroing
{
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
