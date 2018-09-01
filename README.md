## JetBrain IDE Live template 共享仓库

### important: 配置自己的AndroidStudio Preference环境
1. 在clone下来的仓库中，添加 `local_config.txt` 文件，作为个人环境变量配置 （已经ignore）
2. 在`local_config.txt`添加唯一的一行: 自己的AndroidStudio 自定义live templates 位置
3. 这个位置在mac上是 /Users/{你的用户名}/Library/Preferences/AndroidStudio{你的AS版本}/templates
4. 注意要用绝对路径；AS配置 可能存在多个版本，要使用你正在用的那个版本

### 将自己的live template 抽取出来
```sh
sh extract_live_template.sh
```

### 安装共享的 live template
```sh
sh install_live_template.sh
```

NODE: *安装完成后，下次重启AS生效*

### live template 共享规范
1. 尽量起有意义的文件名字，将不同的分开
2. 要在本readme中添加简单的介绍
3. 上传后发个pr，或者让大家review一下

### live template 介绍

#### 1. TODO

带有添加者的用户名和时间

```
// TODO-xx: 2018/8/3
```

#### 2. singleton

单例模式模板代码

```java

    private static final PushDistinct outInstance = new PushDistinct();

    private PushDistinct() {}

    public static PushDistinct getInstance() {
        return outInstance;
    }
```

#### 3. impossible

和含义一致，用来契约式编程

```java
throw new RuntimeException("impossible", e);
```

#### 4. WXLayout

一个系列的live template。模式是 View的缩写，然后扩展为合理的xml格式

例如: 在layout中输入 `image` 会扩展为
```xml
    <ImageView
        android:layout_height="wrap_content"
        android:layout_width="wrap_content"
        tools:drawable="@drawable/ic_launcher" />
```

目前支持的缩写有:
1. image => ImageView
2. text => TextView
3. space => Space
4. frame => FrameLayout
6. vertical => LinearLayout
7. linear => LinearLayout
8. relative => RelativeLayout
9. list => ListView
10. recycler => RecyclerView
11. button => Button
