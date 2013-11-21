#import <Foundation/Foundation.h>

@interface Ochinpo : NSObject

@end

@implementation Ochinpo : NSObject
- (void) ochinchin {
    srand(time(nil));
    int rnd = 0;
    int complete = 0;
    int cnt = 0;
    NSString *ocnp[] = {@"お", @"ち", @"ん", @"ぽ"};

    while (complete < 4) {
        cnt++;
        rnd = rand()%4;
        printf("%s", [ocnp[rnd] UTF8String]);
        complete = (complete == rnd) ? ++complete : 0;
    }

    printf("\n");
    printf("%d回目で完成しました\n", cnt);
}
@end

