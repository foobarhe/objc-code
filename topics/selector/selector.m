#import <Foundation/NSObject.h>

//class Foo
@interface Foo : NSObject {
}
-(void) output:(NSString *)s;
@end

@implementation Foo
-(void) output:(NSString *)s {
  NSLog(@"%@", s);
}
@end


int main(int argc, char* argv[]) {
  Foo *o;
  o = [[Foo alloc] init];
  
  //call the method in normal way
  [o output:@"test string 1"];

  //call the method using selector
  SEL outputSel;
  outputSel = @selector(output:);
  [o performSelector:outputSel withObject:@"test string 2"];  

  [o release];
  return 0;
}
