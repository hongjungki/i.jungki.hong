양수구하기

```objc
    [CalcuOp caclcuOp:@"+" inNum:89 inOfNum:100];
    [CalcuOp caclcuOp:@"-" inNum:5  inOfNum:100];
    [CalcuOp caclcuOp:@"-" inNum:2  inOfNum:100];
    
+ (void)caclcuOp:(NSString *)op inNum:(NSInteger)num1 inOfNum:(NSInteger)num2;


+ (void)caclcuOp:(NSString *)op inNum:(NSInteger)num1 inOfNum:(NSInteger)num2{
    NSInteger resllutNum;
    if ([op isEqualToString:@"+"]) {
        resllutNum = num1 + num2;
        NSLog(@" %ld ", resllutNum);
    } else
        if (num1 < num2){
            NSInteger temp = num1;
                num1 = num2;
                num2 = temp;
                    resllutNum = num1 - num2;
            NSLog(@" %ld", resllutNum);
            }
}
2017-02-11 16:53:32.762374 AbsoluteNum0210[86012:6751021]  189
2017-02-11 16:53:32.762597 AbsoluteNum0210[86012:6751021]  95
2017-02-11 16:53:32.762613 AbsoluteNum0210[86012:6751021]  98
Program ended with exit code: 0
    
```    
    
