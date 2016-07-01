//
//  ViewController.m
//  AutoResizeTableViewCell2
//
//  Created by zhengbing on 6/27/16.
//  Copyright © 2016 zhengbing. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Size.h"
#import "AutoResizeTableViewCell.h"

#define CELLID @"ViewController"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>{
    NSArray *dataSource;
}
@property(nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tableView];
    
    
    dataSource = @[@{@"name":@"内容一",@"detail":@"党的十八大以来，中共中央总书记、国家主席、中央军委主席习近平站在党和国家事业发展全局的高度，围绕全面建成小康社会提出了一系列新理念新思想新战略。认真学习贯彻这些重要论述，对于按照“五位一体”总体布局和“四个全面”战略布局，深刻认识全面建成小康社会的重大意义，准确把握全面建成小康社会的基本要求和重点任务，用新发展理念引领和推动经济社会发展，夺取全面建成小康社会决胜阶段的伟大胜利，实现“两个一百年”奋斗目标，实现中华民族伟大复兴的中国梦，具有十分重要的指导意义。"},@{@"name":@"内容二",@"detail":@"新华社北京6月5日电由中共中央文献研究室编辑的《习近平关于全面建成小康社会论述摘编》一书，近日由中央文献出版社出版，在全国发行。"},@{@"name":@"内容一",@"detail":@"党的十八大以来，中共中央总书记、国家主席、中央军委主席习近平站在党和国家事业发展全局的高度，围绕全面建成小康社会提出了一系列新理念新思想新战略。认真学习贯彻这些重要论述，对于按照“五位一体”总体布局和“四个全面”战略布局，深刻认识全面建成小康社会的重大意义，准确把握全面建成小康社会的基本要求和重点任务，用新发展理念引领和推动经济社会发展，夺取全面建成小康社会决胜阶段的伟大胜利，实现“两个一百年”奋斗目标，实现中华民族伟大复兴的中国梦，具有十分重要的指导意义。"},@{@"name":@"内容一",@"detail":@"党的十八大以来，中共中央总书记、国家主席、中央军委主席习近平站在党和国家事业发展全局的高度，围绕全面建成小康社会提出了一系列新理念新思想新战略。认真学习贯彻这些重要论述，对于按照“五位一体”总体布局和“四个全面”战略布局，深刻认识全面建成小康社会的重大意义，准确把握全面建成小康社会的基本要求和重点任务，用新发展理念引领和推动经济社会发展，夺取全面建成小康社会决胜阶段的伟大胜利，实现“两个一百年”奋斗目标，实现中华民族伟大复兴的中国梦，具有十分重要的指导意义。"},@{@"name":@"内容一",@"detail":@"党的十八大以来，中共中央总书记、国家主席、中央军委主席习近平站在党和国家事业发展全局的高度，围绕全面建成小康社会提出了一系列新理念新思想新战略。认真学习贯彻这些重要论述，对于按照“五位一体”总体布局和“四个全面”战略布局，深刻认识全面建成小康社会的重大意义，准确把握全面建成小康社会的基本要求和重点任务，用新发展理念引领和推动经济社会发展，夺取全面建成小康社会决胜阶段的伟大胜利，实现“两个一百年”奋斗目标，实现中华民族伟大复兴的中国梦，具有十分重要的指导意义。"},@{@"name":@"内容一",@"detail":@"党的十八大以来，中共中央总书记、国家主席、中央军委主席习近平站在党和国家事业发展全局的高度，围绕全面建成小康社会提出了一系列新理念新思想新战略。认真学习贯彻这些重要论述，对于按照“五位一体”总体布局和“四个全面”战略布局，深刻认识全面建成小康社会的重大意义，准确把握全面建成小康社会的基本要求和重点任务，用新发展理念引领和推动经济社会发展，夺取全面建成小康社会决胜阶段的伟大胜利，实现“两个一百年”奋斗目标，实现中华民族伟大复兴的中国梦，具有十分重要的指导意义。"}];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataSource.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AutoResizeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELLID forIndexPath:indexPath];
//    if (!cell) {
//        
//    }
    cell.titleLabel.text = dataSource[indexPath.row][@"name"];
    cell.detailsLabel.text = dataSource[indexPath.row][@"detail"];
    cell.titleLabel.font = [UIFont systemFontOfSize:18];
    cell.detailsLabel.font = [UIFont systemFontOfSize:18];
    
    [cell.titleLabel sizeToFit];
    [cell.detailsLabel sizeToFit];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat heightForTitle = [NSString textString:[NSString stringWithFormat:@"%@",dataSource[indexPath.row][@"name"]] fontSize:18 maxWidth:self.view.frame.size.width].height;
    CGFloat heightForDetails = [NSString textString:[NSString stringWithFormat:@"%@",dataSource[indexPath.row][@"detail"]] fontSize:18 maxWidth:self.view.frame.size.width].height;
    return heightForTitle + heightForDetails;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}

#pragma mark GETTER 
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[AutoResizeTableViewCell class] forCellReuseIdentifier:CELLID];
    }
    return _tableView;
}











@end
