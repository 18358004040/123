//
//  ViewController.m
//  车车车!
//
//  Created by 褚彦超 on 2017/3/16.
//  Copyright © 2017年 褚彦超. All rights reserved.
//

#import "ViewController.h"
#import "carModel.h"
#import "innerCarModel.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)NSArray* dataArray;
@end
static NSString* identifier=@"hh";
@implementation ViewController








- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UITableView* tableView=[[UITableView alloc]initWithFrame:self.view.bounds];
    
    tableView.dataSource=self;
    
    tableView.delegate=self;
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identifier];
    
    
    
    [self.view addSubview:tableView];
    
    
    
    
    
}


-(NSArray*)dataArray
{
    if (nil==_dataArray) {
        NSString* filePath=[[NSBundle mainBundle]pathForResource:@"cars_total.plist" ofType:nil];
        
        NSArray* tempArray=[NSArray arrayWithContentsOfFile:filePath];
        
        NSMutableArray* mutableArray=[NSMutableArray array];
        
        for (NSDictionary* dict in tempArray) {
            
            carModel* model=[carModel carModelWithDict:dict];
            
            [mutableArray addObject:model];
            
            
        }
        
        _dataArray=mutableArray.copy;
        
    }
    
    return _dataArray;
}


//添加组数行数内容
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return self.dataArray.count;
    
}
//行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    carModel* model=self.dataArray[section];
    
    return model.cars.count;
    
    
}
//cell内容
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    
    //获取组索引所对应的模型
    carModel* model=self.dataArray[indexPath.section];
    innerCarModel* innerModel=model.cars[indexPath.row];
    //获取组索引内容
    
    
    //为textlabel赋值
    cell.textLabel.text=innerModel.name;
    cell.imageView.image=[UIImage imageNamed:innerModel.icon];
    return cell;
}
//设置组头
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    carModel* model=self.dataArray[section];
    
    return model.title;
    
    
    
}
//右索引
- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    NSMutableArray* mutable=[NSMutableArray array];
    for (carModel* model in self.dataArray) {
        [mutable addObject:model.title];
    }
    
    return mutable.copy;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
