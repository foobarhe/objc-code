/*
build: gcc -o res foo.m -framework Foundation 
info: 
isMemberOfClass和isKindOfClass都是NSObject提供的方法；
  isMemeberOfClass判断某个对象是否是某个类的对象；
  isKindOfClass判断某个对象的是否是某个类及其子类的对象；
*/

#import <Foundation/NSObject.h>

@interface ParentClass : NSObject
@end
@implementation ParentClass
@end
  
@interface ChildClass : ParentClass
@end
@implementation ChildClass
@end
  
int main(int argc, char *argv[]) {
  ChildClass *c = [[ChildClass alloc] init];
  
  if ([c isMemberOfClass:[ChildClass class]]) {
    NSLog(@"the obj is a ChildClass obj");
  }

  if ([c isKindOfClass:[ParentClass class]]) {
    NSLog(@"the obj's class is one of the subclasses of ParentClass");
  }

  return 0;
}



