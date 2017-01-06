//
//  PepMIS.m
//  ManageSystem
//
//  Created by guan on 17/1/4.
//  Copyright © 2017年 guanPBC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PepMIS.h"
#import "Pepole.h"

@implementation PepMIS
//初始化
-(id)init{
    if(self=[super init])
    {
        allPep=[[NSMutableArray alloc]init];                  //用于保存所有人员信息
    }
    else
    {
        return nil;
    }
    return self;
}
//添加人员信息
-(void)addNewPep:(Pepole *)stu{
    [allPep addObject:stu];
}
//打印所有信息
-(void)printAllpep{
    for(int i=0;i<[allPep count];i++)
    {
        Pepole * nows=[allPep objectAtIndex:i];
        [nows printInfo];
    }
}
//按查找用户号人员信息
-(Pepole *)findPep:(int)num{
    for(int i=0;i<[allPep count];i++)
    {
        Pepole * nows=[allPep objectAtIndex:i];
        if(nows.number==num)
        {
            return nows;
        }
    }
    return nil;
}
//删除信息
-(void)deletePep:(int)num{
    for(int i = 0;i < [allPep count];i++)
    {
        Pepole * nows=[allPep objectAtIndex:i];
        if(nows.number==num)
        {
            [allPep removeObjectAtIndex:i];
            return;
        }
    }
}
//保存信息,利用的是NSKeyedArchiver
-(void)savePep{
    NSData *data1=[[NSData alloc]init];
    data1=[NSKeyedArchiver archivedDataWithRootObject:allPep];                           //按照NSKeyedArchiver进行归档
    [data1 writeToFile:@"//Users//guan//Desktop//testOC.txt" atomically:YES];            //文件存储的位置
    NSLog(@"保存成功");
}
//读取信息
-(void)readPep{
    [allPep removeAllObjects];
    NSData *data2=[NSData dataWithContentsOfFile:@"//Users//guan//Desktop//testOC.txt"];
    NSArray *a=[NSKeyedUnarchiver unarchiveObjectWithData:data2];
    [allPep addObjectsFromArray:a];
    
    NSLog(@"读取成功");
}
@end