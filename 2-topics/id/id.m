#import <Foundation/NSObject.h>

//class Foo1
@interface Foo1 : NSObject {
}
-(void)func;
@end

@implementation Foo1
-(void)func {
  NSLog(@"func in Foo1");
}
@end

//class Foo2
@interface Foo2 : NSObject {
}
-(void)func;
@end

@implementation Foo2
-(void)func {
  NSLog(@"func in Foo2");
}
@end

//global method
void method(id o) {
  [o func];
}

int main(int argc, char* argv[]) {
  id o;

  o = [[Foo1 alloc] init];
  method(o);
  [o release];
  
  o = [[Foo2 alloc] init];
  method(o);
  [o release];

  return 0;
}

