![image](https://github.com/Ailix/AIStuff/blob/master/AIImages/AITranslucentLabel.png)

AITranslucentLabel
==================
一个半透明的Label 背景透明 文字不透明


## Usage

```objc
 AITranslucentLabel *label = [[AITranslucentLabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 280.0f, 80.0f)];
    label.center = CGPointMake(self.view.bounds.size.width/2.0f, self.view.bounds.size.height/2.0f);
    label.text = @"Xavi";
    label.alphaValue = 0.3;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor cyanColor];
    label.font = [UIFont systemFontOfSize:24];
    [self.view addSubview:label];
    [label release];
```
