//
//  Account.h
//  ClassPropertyMethod
//
//  Created by Snow on 2019/07/11.
//  Copyright © 2019 Snow. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Account : NSObject

@property (nonatomic, readonly) NSString *name; //氏名
@property (nonatomic, readonly) NSUInteger age; //年齢
@property (nonatomic, readonly) NSString *sex; //性別
@property (nonatomic, readonly) NSString *language; //得意な言語


-(id)initWithName:(NSString *)name age:(NSUInteger)age sex:(NSString *)sex language:(NSString *)language;

-(void)printPerson;


@end

NS_ASSUME_NONNULL_END
