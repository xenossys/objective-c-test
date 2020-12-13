//
//  BookManager.h
//  BookManager
//
//  Created by paypro on 2020/12/13.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@class Book; // Book Class 가 있으니 오류 내지 말라는 것. 컴파일이 빨라진다. 순환참조 애러를 배제할 수 있다.
@interface BookManager : NSObject{
    NSMutableArray *bookList;
}

- (void)addBook:(Book *)bookObject;
-(NSString *)showAllBook;
-(NSUInteger)countBook;
-(NSString *)findBook:(NSString *)name;
-(NSString *)removeBook:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
