//
//  SecondViewController.h
//  Test
//
//  Created by wwwwwwww on 2017/3/21.
//  Copyright © 2017年 wwwwwwww. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (nonatomic, copy) NSString *str;

- (void)loadJiu:(NSString *)string andArray:(NSArray *)array;

- (NSString *)jsan:(NSArray *)array dict:(NSDictionary *)dict;

@end
