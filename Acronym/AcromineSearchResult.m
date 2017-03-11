//
//  AcromineSearchResult.m
//  Acronym
//
//  Created by Deopura on 03/10/2017.
//  Copyright (c) 2017 Deopura. All rights reserved.
//

#import "AcromineSearchResult.h"

@interface AcromineSearchResult ()

@property (nonatomic, strong) NSDictionary *data;

@end

@implementation AcromineSearchResult

@synthesize data=_data;

- (id)init {
    if (self = [self initWithDictionary:nil]) {
    }
    return self;
}

- (id)initWithDictionary:(NSDictionary *)data {
    if (self = [super init]) {
        _data = data;
        if (_data == nil) {
            _data = [NSDictionary dictionary];
        }
    }
    return self;
}

- (NSArray *)results {
    return self.data[@"lfs"];
}


@end
