//
//  Pepole.m
//  ManageSystem
//
//  Created by guan on 17/1/4.
//  Copyright © 2017年 guanPBC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pepole.h"

@implementation Pepole

@synthesize name;
@synthesize number;
@synthesize age;
@synthesize score;
@synthesize phoneNum;

//输入信息
-(void)inputPepole{
    printf("\n请输入学号 姓名 年龄 成绩 电话\n");
    char nam[20];
    char phone[20];
    scanf("%d %s %d %d %s",&number,nam,&age,&score,phone);
    name = [NSString stringWithFormat:@"%s",nam];
    phoneNum = [NSString stringWithFormat:@"%s",phone];
}
//打印信息
-(void)printInfo{
    printf("\n\b学号:%d \b姓名:%s \b年龄:%d \b成绩:%d \b电话:%s",number,[name UTF8String],age,score,[phoneNum UTF8String]);
    
}
//修改信息
-(void)modify:(Pepole *) stu{
    self.name = stu.name;
    self.age = stu.age;
    self.score = stu.score;
    self.phoneNum = stu.phoneNum;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{   [aCoder encodeInt:number forKey:@"number"];
    [aCoder encodeInt:age forKey:@"age"];
    [aCoder encodeObject:name forKey:@"name"];
    [aCoder encodeInt:score forKey:@"score"];
    [aCoder encodeObject:phoneNum forKey:@"phoneNum"];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self=[super init]) {
        self.number = [aDecoder decodeIntForKey:@"number"];
        self.age = [aDecoder decodeIntForKey:@"age"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.score = [aDecoder decodeIntForKey:@"score"];
        self.phoneNum = [aDecoder decodeObjectForKey:@"phoneNum"];
    }
    
    return self;
}

@end
