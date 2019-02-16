# nwafuthesis

#### 介绍
西北农林科技大学学位论文LaTeX文档类(模板)，初步计划支持本科、硕士、博士学位论文。

#### 使用说明

1. 目前仅支持本科生毕业论文（设计），硕士、博士学位论文模板正在努力开发中。
2. 请使用：
   ```
   \documentclass[lang=cn, % 目前只支持中文
                  degree=bachelor, % 目前只支持学士论文(设计)
                  type=paper, % 支持paper(论文)或design(设计)
                  %openany,oneside % 单面打印
                  openright,blankleft,twoside % 双面打印
                 ]{nwafuthesis}
   ```
   引入`nwafuthesis`文档类。
3. 为确保参考文献样式正确，请务必使用最新版的`gb7714-2015ay.bbx`和`gb7714-2015ay.cbx`样式文件，有关`gb7714-2015ay`样式文件的详情，请参考 "https://github.com/hushidong/biblatex-gb7714-2015" 。

4. 建议使用`TexLive2018`以上的`XeLaTeX`编译`*.tex`文件。


