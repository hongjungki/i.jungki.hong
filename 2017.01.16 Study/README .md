##ios 개발자 과정
[구구단]()

```objc
+ (void)gugudan:(NSInteger)dan{
   NSString *reslut = @"";
    for (NSInteger c = 2; c < 10; c++) {
        NSString *temp = [NSString stringWithFormat:@" %ld * %ld = %ld",dan,c,dan*c];
        reslut = [reslut stringByAppendingString:temp];
    }NSLog(@" %@ ",reslut);
}

```