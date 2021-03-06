# 👉fish-theme-Athene
Athene 是一个oh my fish的主题, 基于知名主题`robbyrussell`
> 取名为Athene（雅典娜），主意为智慧，满足美观，简约，智能等需求
> 能够满足开发人员的常用需求（时间，git，补全，历史等），满足极客的装X需求，以及一般使用者的开箱即用以及美观等需求

win
![](./2020-08-05_114748.jpg)

mac
![](./mac_screen.jpg)
# 🔨使用

1. 安装fish和oh my fish

2. 使用omf安装
```shell
omf install https://github.com/AbelChe/fish-theme-Athene
omf theme fish-theme-Athene
```
> ps: 如果有报错，可以使用omf doctor检查错误，若是关于主题配置链接文件冲突的问题，可以直接用下面一条命令覆盖主题配置文件（ps:如果主题安装完样式没有完全加载，也可能是`~/.config/omf/theme`没有同步）
```shell
echo "fish-theme-Athene" > ~/.config/omf/theme
```

3. 重启终端

# 🎲功能
站在巨人的肩膀上，这令Athene既美观又实用。
ps：在windows平台上想要获得较好的体验，建议使用`Fluent Terminal`等终端。
- fish的功能（补全，提示，历史提示，模糊搜索等）

- ✕✔︎ 显示上条命令的执行结果

- 显示用户名，root用户⚡特殊显示

- 显示完整路径
> 可以使用`set -g fish_prompt_pwd_dir_length 0`来重新设定,0为全部显示，1为显示1个字符的缩写

- git仓库提示（同robbyrussell）

- 在右侧显示时间

- 如果当前终端是SSH终端，显示`☁`进行提示

# 👿已知问题

- [ ] 1. SSH的提示问题：在ssh终端中su到其他用户后终端会判定为常规tty终端

- [ ] 2. 平台和终端工具兼容问题：windows平台使用cmder，配合使用oh my tmux会出现闪屏等问题（貌似使用bash也会出现问题，可能是cmder和oh my tmux的兼容问题）
