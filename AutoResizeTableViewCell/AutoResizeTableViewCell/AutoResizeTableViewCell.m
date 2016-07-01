//
//  AutoResizeTableViewCell.m
//  AutoResizeTableViewCell2
//
//  Created by zhengbing on 6/27/16.
//  Copyright © 2016 zhengbing. All rights reserved.
//

#import "AutoResizeTableViewCell.h"

@implementation AutoResizeTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //标题
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 21)];
        //详情
        self.detailsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.titleLabel.bounds), [UIScreen mainScreen].bounds.size.width, 44)];
        self.titleLabel.textColor = [UIColor redColor];
        self.titleLabel.numberOfLines = 0;
        self.detailsLabel.numberOfLines = 0;
        
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.detailsLabel];
    }
    return self;
}







@end
