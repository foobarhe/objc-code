/*
gcc -o res isa.m -framework Foundation
*/

#import <Foundation/NSObject.h> 

@interface Bar : NSObject {
}
-(void)bar;
@end

@implementation Bar
-(void)bar
{
  //isa是NSObject中的属性，它表示当前对象所属于的类，这里为Bar
  NSLog(@"%@", isa);
}
@end

int main(int argc, char *argv[]) {
  Bar *b = [[Bar alloc] init];
  [b bar];
    
   return 0;
}
