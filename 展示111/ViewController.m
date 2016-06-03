//
//  ViewController.m
//  展示111
//
//  Created by 晨阳 on 16/6/1.
//  Copyright © 2016年 chenyang. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 50);
    button.backgroundColor = [UIColor redColor];
    
    [button addTarget:self action:@selector(tiaozhuan) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
  
    
    
    
    
   }

-(void)tiaozhuan{
    
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    SecondViewController *second = [story  instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    [self.navigationController pushViewController:second animated:YES];
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
