//
//  MYTreeItem.m
//  MYTreeTableView
//
//  Created by mayan on 2018/4/3.
//  Copyright © 2018年 mayan. All rights reserved.
//  https://github.com/mayan29/TreeTableView


#import "MYTreeItem.h"

@implementation MYTreeItem


- (instancetype)initWithName:(NSString *)name
                          ID:(NSString *)ID
                    parentID:(NSString *)parentID
                     orderNo:(NSString *)orderNo
                        type:(NSString *)type
                      isLeaf:(BOOL)isLeaf
                        data:(id)data {
    
    self = [super init];
    if (self) {
        _name       = name;
        _ID         = ID;
        _parentID   = parentID;
        _orderNo    = orderNo;
        _type       = type;
        _isLeaf     = isLeaf;
        _data       = data;
        
        _level      = 0;
        _isExpand   = NO;
        _checkState = MYTreeItemDefault;
        _childItems = [NSMutableArray array];
    }
    return self;
}

@end
