//
//  Book.h
//  BookManager
//
//  Created by paypro on 2020/12/13.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *author;

-(void)bookPrint;
// @property (nonatomic, strong) NSString *name, *genre,*author;  <-- 이렇게 사용해도 됨
// nonatomic 동시에 값을 변화 시킬수 있다. atomic 은 좀 느려질 수 있다. // strong 기본 값. 객체를 하나 참조하고 있다는 표시.
@end

NS_ASSUME_NONNULL_END
