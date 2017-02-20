반올림


```objc
    
    [RoundNum roundNum:1.2221];
    [RoundNum roundNum:32.88493];
    [RoundNum roundNum:4.994058];
    [RoundNum roundNum:2999.993948];
    
    
    + (CGFloat)roundNum:(CGFloat)num;
    
    
    + (CGFloat)roundNum:(CGFloat)num{
	    CGFloat num1 = num + 0.005;
		    NSInteger num2 = (NSInteger)(num1*100);
		    CGFloat num3 = ((CGFloat)num2)/100;
	    NSLog(@" %f ", num3);
	    return num3;
	    }


2017-02-10 19:47:07.451578 AbsoluteNum0210[83343:6427126]  1.220000
2017-02-10 19:47:07.451718 AbsoluteNum0210[83343:6427126]  32.880000
2017-02-10 19:47:07.451729 AbsoluteNum0210[83343:6427126]  4.990000
2017-02-10 19:47:07.451741 AbsoluteNum0210[83343:6427126]  2999.990000
Program ended with exit code: 0
```





