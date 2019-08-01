//
//  Account.m
//  ClassPropertyMethod
//
//  Created by Snow on 2019/07/11.
//  Copyright © 2019 Snow. All rights reserved.
//

#import "Account.h"

@interface Account()

@property (nonatomic) NSString *name; //氏名
@property (nonatomic) NSUInteger age; //年齢
@property (nonatomic) NSString *sex; //性別
@property (nonatomic) NSString *language; //得意な言語

@end


@implementation Account

-(id)initWithName:(NSString *)name age:(NSUInteger)age sex:(NSString *)sex language:(NSString *)language {
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.sex = sex;
        self.language = language;
    }
    return self;
}


-(void)printPerson {
    if ([self.sex isEqual:@"M"]) {
        NSString *isMale = [NSString stringWithFormat:@"%@君は、%@が得意な%lu歳です。", _name, _language, _age];
        NSLog(@"%@", isMale);
    } else {
        NSString *isFemale = [NSString stringWithFormat:@"%@さんは、%@が得意な%lu歳です。", _name, _language, _age];
        NSLog(@"%@", isFemale);
    }
}

@end
