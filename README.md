# fish-theme-Athene
Athene 是一个oh my fish的主题, 基于知名主题`robbyrussell`

# 功能
站在巨人的肩膀上，这令Athene既美观又实用。
ps：在windows平台上想要获得较好的体验，建议使用`Fluent Terminal`等终端。
- fish的功能（补全，提示，历史提示，模糊搜索等）

- ❌ ✔ 显示上调命令的执行结果

- 显示用户名，root用户⚡特殊显示

- 显示完整路径
> 可以使用`set -g fish_prompt_pwd_dir_length 0`来重新设定,0为全部显示，1为显示1个字符的缩写

- git仓库提示（同robbyrussell）

- 在右侧显示时间

- 如果当前终端是SSH终端，显示`-SSH-`进行提示

# 已知问题

- [ ] 1. SSH的提示问题：在ssh终端中su到其他用户后终端会判定为常规tty终端

- [ ] 2. 平台和终端工具兼容问题：windows平台使用cmder，配合使用oh my tmux会出现闪屏等问题（貌似使用bash也会出现问题，可能是cmder和oh my tmux的兼容问题）
