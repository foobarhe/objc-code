#import <Foundation/Foundation.h>

@interface Cup:NSObject
-(void) fill;
@end

@implementation Cup
-(void) fill {
  NSException *e = [NSException exceptionWithName:@"HotTeaException" reason:@"The tea is too hot" userInfo: nil];
  //@throw e;
   [e raise];
}
@end

int main(int argc, char* argv[]) {
  
  Cup *cup = [[Cup alloc] init];
 
  @try {
    [cup fill];
  }  
  @catch (NSException *e) {
    NSLog(@"main: caught %@: %@", [e name], [e reason]);
    [e release];
  }
  @finally {
    [cup release];
  }

  return 0;
}
