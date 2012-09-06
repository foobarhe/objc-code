#import <stdio.h>
#import "Foo.h"

int main(int argc, char* argv[]) {
  
  Foo* o = [[Foo alloc] init];

  o->bar1 = 1;
  printf("bar1 = %d\n", o->bar1);
  
  [o release];

  return 0;
}
