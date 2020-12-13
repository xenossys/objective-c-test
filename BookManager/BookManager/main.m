//
//  main.m
//  BookManager
//
//  Created by paypro on 2020/12/13.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Book
        Book *book1 = [[Book alloc]init];
        book1.name = @"햄릿";
        book1.genre = @"비극";
        book1.author = @"세익스피어";
        [book1 bookPrint];
        Book *book2 = [[Book alloc]init];
        book2.name = @"햄릿1";
        book2.genre = @"비극1";
        book2.author = @"세익스피어1";
        [book2 bookPrint];
        Book *book3 = [[Book alloc]init];
        book3.name = @"햄릿2";
        book3.genre = @"비극2";
        book3.author = @"세익스피어2";
        [book3 bookPrint];
        
        BookManager *myBook = [[BookManager alloc]init];
        [myBook addBook:book1];
        [myBook addBook:book2];
        [myBook addBook:book3];
        
        NSLog(@"%@",[myBook showAllBook]);
        NSLog(@"count : %li", [myBook countBook]);
        
        NSString *strTemp = [myBook findBook:@"햄릿3"];
        if(strTemp != nil){
            NSLog(@"%@", strTemp);
        }else{
            NSLog(@"찾으시는 책이 없습니다.");
        }
        
        NSString *removeResult = [myBook removeBook:@"햄릿2"];
        if(removeResult != nil){
            NSLog(@"%@ 책을 지웠습니다.", removeResult);
        }else{
            NSLog(@"지우려는 책이 없습니다.");
        }
        
         NSLog(@"%@",[myBook showAllBook]);
        
        
        
        // BookManager
    }
    return 0;
}
