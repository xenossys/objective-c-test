//
//  Book.m
//  BookManager
//
//  Created by paypro on 2020/12/13.
//  Copyright © 2020 xenossys. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize name,genre,author;

-(void)bookPrint{
    NSLog(@"Name : %@", name);
    NSLog(@"Genre : %@", genre);
    NSLog(@"Author : %@", author);
}
@end
