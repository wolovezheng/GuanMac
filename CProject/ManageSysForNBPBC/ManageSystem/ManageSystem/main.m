//
//  main.m
//  ManageSystem
//
//  Created by guan on 17/1/4.
//  Copyright © 2017年 guanPBC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pepole.h"
#import "PepMIS.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("－－－－－－－欢迎进入人员信息管理系统－－－－－－－\n");
        printf("－－－－国库2017，@copyright2016-2017－－－－－\n\n");
        char c;
        PepMIS * sm=[[PepMIS alloc]init];
        while (YES) {
            printf("\n1 添加人员");
            printf("\n2 打印所有");
            printf("\n3 删除人员");
            printf("\n4 查找人员");
            printf("\n5 修改人员");
            printf("\n6 保存人员");
            printf("\n7 读取人员");
            printf("\n8 退   出\n");
            scanf(" %c",&c);
            switch (c) {
                case '1':
                {
                    Pepole * tmp=[[Pepole alloc]init];
                    [tmp inputPepole];
                    [sm addNewPep:tmp];
                }
                break;
                case '2':
                [sm printAllpep];
                break;
                case '3':
                {
                    int num;
                    printf("\n请输入用户号");
                    scanf(" %d",&num);
                    [sm deletePep:num];
                }
                break;
                case '4':
                {
                    int num;
                    printf("\n请输入用户号");
                    scanf(" %d",&num);
                    Pepole * tmp;
                    tmp=[sm findPep:num];
                    [tmp printInfo];
                }
                break;
                case '5':
                {
                    int num;
                    printf("\n请输入用户号");
                    scanf(" %d",&num);
                    Pepole * tmp;
                    tmp=[sm findPep:num];
                    [tmp inputPepole];
                }
                break;
                
                case '6':
                [sm savePep];
                break;
                
                case '7':
                [sm readPep];
                break;
                
                case '8':
                return 0;
                break;
                
                default:
                break;
            }
            
        }
        
    }
    return 0;
}
