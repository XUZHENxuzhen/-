//
//  ViewController.m
//  TableSelectAll
//
//  Created by angelwin on 16/4/28.
//  Copyright © 2016年 com@angelwin. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "Food.h"
#define selectedAllTag -1
#define selectedCancle -2
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITableView *tableView;
/**
 * 记录选择的所有选项
 */
@property (nonatomic, strong) NSMutableArray      *selectArray;
@property (nonatomic, strong)NSArray  *foodArr;

@property (weak, nonatomic) IBOutlet UIButton *selectBtn;

@end

@implementation ViewController
/**
 懒加载
 **/
- (NSMutableArray *)selectArray {
    if (!_selectArray) {
        _selectArray = [NSMutableArray array];
    }
    return _selectArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  注册单元格
     */
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    self.foodArr = [Food foodNames];
    //设置全选按钮的tag值
    self.selectBtn.tag = selectedCancle;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.foodArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Food *food = self.foodArr[indexPath.row];
    
    if ([self.selectArray containsObject:self.foodArr[indexPath.row]]) {
        
        cell.btn.selected = YES;
    }else {
        
        cell.btn.selected = NO;
    }
    
    cell.label.text = food.foodName;
  
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if ([self.selectArray containsObject:self.foodArr[indexPath.row]]) {
        
        [self.selectArray removeObject:self.foodArr[indexPath.row]];
        
    }else {
        [self.selectArray addObject:self.foodArr[indexPath.row]];
      
    }
    [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    
}
/**
 *点击全选按钮
 */
- (IBAction)selected:(UIButton *)sender {
    
    if (sender.tag == selectedCancle) {
        [sender setTitle:@"取消" forState:UIControlStateNormal];
        [self.selectArray addObjectsFromArray:self.foodArr];
        sender.tag = selectedAllTag;
    }else{
       [self.selectArray removeAllObjects];
       [sender setTitle:@"全选" forState:UIControlStateNormal];
       sender.tag = selectedCancle;
   }
     [self.tableView reloadData];
}

@end
