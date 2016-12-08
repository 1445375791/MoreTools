//
//  XHPicViewController.m
//  MoreTool
//
//  Created by 吴朋 on 2016/12/7.
//  Copyright © 2016年 吴朋. All rights reserved.
//

#import "XHPicViewController.h"
#import "XHPicModel.h"
#import "XHPicTableViewCell.h"
@interface XHPicViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView;

@property (nonatomic, strong)NSMutableArray *dataArr;

@property (nonatomic, assign) int currentPage;

@end

@implementation XHPicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.frame = CGRectMake(0, 0, MainScreenWidth, MainScreenHeight - 40);
    _currentPage = 1;
    _dataArr = [@[] mutableCopy];
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, MainScreenWidth, self.view.bounds.size.height - 64) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [[UIView alloc] init];
    _tableView.estimatedRowHeight = 80;
    _tableView.rowHeight = UITableViewAutomaticDimension;
    [self.view addSubview:_tableView];
    [self getDataFromInter];
}

- (void)getDataFromInter {
    [PPNetworkHelper GET:XIAOHUA_PIC_API parameters:@{@"page" : [NSNumber numberWithInt:self.currentPage]} responseCache:^(id responseCache) {
        [self transformTheDicDataWithModel:responseCache];
    } success:^(id responseObject) {
        [self transformTheDicDataWithModel:responseObject];
    } failure:^(NSError *error) {
        
    }];
}

- (void)transformTheDicDataWithModel:(id)response {
    if ([response isKindOfClass:[NSDictionary class]]) {
        NSDictionary *bodyDic = response[@"showapi_res_body"];
        self.currentPage = [bodyDic[@"currentPage"] intValue];
        NSArray *contectList = bodyDic[@"contentlist"];
        for (NSDictionary *dic in contectList) {
            XHPicModel *model = [XHPicModel initTheModelWithDic:dic];
            [self.dataArr addObject:model];
        }
        
        [self.tableView reloadData];
    }
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XHPicTableViewCell *cell = [XHPicTableViewCell cellWithTableView:tableView];
    XHPicModel *picModel = self.dataArr[indexPath.row];
    [cell buildTheViewWithModel:picModel];
    return cell;
}


#pragma mark - UITableViewDelegate


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
