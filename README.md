![image](https://github.com/Ailix/AIStuff/blob/master/AIImages/AITranslucentLabel.png)

AITranslucentLabel
==================
一个半透明的Label 背景透明 文字不透明


## Usage

```objc
AITranslucentLabel *label = [AITranslucentLabel labelWithBuilder:^(AITranslucentLabelBuilder *builder) {
    builder.frame = CGRectMake(0, 100, self.view.frame.size.width, 44);
    builder.text  = @"Xavi";
}];
[self.view addSubview:label];
```
