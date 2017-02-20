
구구단


```objc

for (NSInteger i = 2; i < 10; i++) {
        [Gugudan gugudan:i];
    }

+ (void)gugudan:(NSInteger)dan;

+ (void)gugudan:(NSInteger)dan{
   NSString *reslut = @"";
    for (NSInteger c = 2; c < 10; c++) {
        NSString *temp = [NSString stringWithFormat:@" %ld * %ld = %ld",dan,c,dan*c];
        reslut = [reslut stringByAppendingString:temp];
    }NSLog(@" %@ ",reslut);
}
```