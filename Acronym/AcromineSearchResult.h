//
//  AcromineSearchResult.h
//  Acronym
//
//  Created by Deopura on 03/10/2017.
//  Copyright (c) 2017 Deopura. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AcromineSearchResult : NSObject

- (id)initWithDictionary:(NSDictionary *)data;

@property (nonatomic, strong) NSArray *results;
//TODO: Probably should model the other fields in the response. For this app they are not used.
@end
