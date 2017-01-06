//
//  PepMIS.h
//  ManageSystem
//
//  Created by guan on 17/1/4.
//  Copyright © 2017年 guanPBC. All rights reserved.
//

#ifndef PepMIS_h
#define PepMIS_h


#endif /* PepMIS_h */
#import <Foundation/Foundation.h>
#import "Pepole.h"

@interface PepMIS : NSObject
{
    NSMutableArray * allPep;                    //保存所有人员信息
}

-(id)init;                                      //初始化，其中id类型表示的是指向object对象的指针
-(void)addNewPep:(Pepole *)stu;                 //增加新的人员信息
-(void)printAllpep;                             //打印出所有人员信息
-(Pepole *)findPep:(int)num;                    //利用用户号查找用户信息
-(void)deletePep:(int)num;                      //依据用户号删除人员信息
-(void)savePep;
-(void)readPep;                                 //读取人员信息

@end