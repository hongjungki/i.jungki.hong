절대값 구하기

```objc
    [AbsoluteNum abslouteNum:-90];
    [AbsoluteNum abslouteNum:-0.3];
    [AbsoluteNum abslouteNum:20 ];
    [AbsoluteNum abslouteNum:-30.4];
    
+ (CGFloat)abslouteNum:(CGFloat)num;


+ (CGFloat)abslouteNum:(CGFloat)num{
    if (num >= 0 ) {
        NSLog(@" %f ",num);
        return num;
    } else {
        CGFloat num1 = num * -1;
        NSLog(@" %f ",num1);
        return num1;
    }
}
2017-02-10 18:58:06.928860 AbsoluteNum0210[82849:6391958]  90.000000
2017-02-10 18:58:06.928994 AbsoluteNum0210[82849:6391958]  0.300000
2017-02-10 18:58:06.929005 AbsoluteNum0210[82849:6391958]  20.000000
2017-02-10 18:58:06.929017 AbsoluteNum0210[82849:6391958]  30.400000
Program ended with exit code: 0
```
