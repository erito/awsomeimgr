//
//  ViewController.m
//  Eriks Awesome App
//
//  Created by Buttram, Erik on 11/2/15.
//  Copyright © 2015 Buttram, Erik. All rights reserved.
//

#import "ViewController.h"
#import "EriksAwesomeTableViewCell.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadData {
    // Client ID: e510a2458b3841f
    // Client secret: ecdd0555a5bf8ffcad9f11859870a4ba7a836fd3
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    [manager.requestSerializer setValue:@"Client-ID e510a2458b3841f" forHTTPHeaderField:@"Authorization"];
    NSString *urlString = [NSString stringWithFormat:@"%@gallery/hot/viral/1?showViral=true", BASE_API];
    [manager GET:urlString parameters:nil success:^(AFHTTPRequestOperation * operation, NSDictionary * responseObject) {
        NSLog(@"%@", responseObject);
        self.response = responseObject[@"data"];
        [self.imageTable reloadData];
    } failure:^(AFHTTPRequestOperation * operation, NSError * error) {
        NSLog(@"%@", error.userInfo);
    }];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 200.0;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.response.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EriksAwesomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EriksAwesomeTableViewCell" forIndexPath:indexPath];
    
    NSDictionary *photo = self.response[indexPath.row];
    NSURL *url = [NSURL URLWithString:photo[@"link"]];
    [cell layoutWithURL:url];
    
    return cell;
}

@end
