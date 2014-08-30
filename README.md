![image](https://github.com/Ailix/AIStuff/blob/master/AIImages/AITranslucentLabel.png)

AITranslucentLabel
==================
一个半透明的Label 背景透明 文字不透明


## How to use

```objc
AITranslucentLabel *label = [[AITranslucentLabel alloc] initWithFrame:CGRectMake(50, 50, 200, 80)];
    label.text = @"Xavi";
    label.font = [UIFont systemFontOfSize:24];
    [self.view addSubview:label];
    [label release];
```
