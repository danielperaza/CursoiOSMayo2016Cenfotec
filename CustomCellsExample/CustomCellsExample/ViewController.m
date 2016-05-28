//
//  ViewController.m
//  CustomCellsExample
//
//  Created by Cesar Brenes on 5/28/16.
//  Copyright © 2016 Cesar Brenes. All rights reserved.
//

#import "ViewController.h"
#import "CustomNumber.h"
#import "CustomTableViewCell.h"



@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeDataSource];
    [self registerCustomCell];
}


-(void)registerCustomCell{
    UINib *nib = [UINib nibWithNibName:@"CustomTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"CustomTableViewCell"];
}


-(void)initializeDataSource{
    self.dataSource = [NSMutableArray new];
    for (int index = 0; index<100; index++) {
        BOOL isPair = NO;
        if (index%2==0 && index!=0) {
            isPair = YES;
        }
        CustomNumber *number = [[CustomNumber alloc] initWithNumber:index isPair:isPair];
        [self.dataSource addObject:number];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //    Primer creamos la instancia de la celda, verifica si puede reutilizar una celda o sino crea una nueva
    CustomTableViewCell *customCell = [tableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell"];
    //    Obtengo el elemento con el row del data source
    CustomNumber *currentNumber = self.dataSource[indexPath.row];
    customCell.numberLabel.text = [NSString stringWithFormat:@"%ld",[currentNumber.number integerValue]];
    if (currentNumber.isPair) {
        customCell.isPairLabel.text = @"YES";
    }
    else{
        customCell.isPairLabel.text = @"NO";
    }
    return customCell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}


@end
