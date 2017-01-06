//
//  Pepole.h
//  ManageSystem
//
//  Created by guan on 17/1/4.
//  Copyright © 2017年 guanPBC. All rights reserved.
//

#ifndef Pepole_h
#define Pepole_h


#endif                                           /* Pepole_h */

#import <Foundation/Foundation.h>
@interface Pepole : NSObject<NSCoding>
{
    NSString * name;                             //姓名
    int number;                                  //用户号
    int age;                                     //年龄
    int score;
    NSString * phoneNum;                         //电话
}
@property NSString * name;                       //用于声明，编译器自动添加get及set方法,与@synthesize 对应
@property int number;
@property int age;
@property int score;
@property NSString * phoneNum;

-(void)inputPepole;                               //增加录入人员信息
-(void)printInfo;                                 //打印出人员信息
-(void)modify:(Pepole *) stu;

@end
