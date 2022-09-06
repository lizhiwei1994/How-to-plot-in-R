# How-to-plot-in-R
 这是本人在2022年9月真实世界研究的临床大数据分析方法与应用培训班的材料



## 如何获得PPT中的示例数据和代码

1. 你可以直接下载整个Repository，然后打开[How to plot in R.Rproj](https://github.com/lizhiwei1994/How-to-plot-in-R/blob/main/How%20to%20plot%20in%20R.Rproj "How to plot in R.Rproj")文件，这是一个R project。
代码存放在`examples/code/`文件夹下。数据存放在`examples/data/`文件夹下。
在你打开下载的R project文件后，可以直接运行[examples](https://github.com/lizhiwei1994/How-to-plot-in-R/tree/main/examples)中的代码，因为它使用的是相对路径。
<details> 
  <summary>Click me</summary> 

这里边放内容；这里边放内容；这里边放内容；这里边放内容； 这里边放内容；这里边放内容；这里边放内容；这里边放内容；这里边放内容； 这里边放内容；这里边放内容；这里边放内容；
</details>

2. 你也可以只下载[examples](https://github.com/lizhiwei1994/How-to-plot-in-R/tree/main/examples)文件，但是你需要把代码中的读取数据所使用的地址改为你电脑上文件夹的地址。比如在[此行代码](https://github.com/lizhiwei1994/How-to-plot-in-R/blob/03dc7e4a7759311b5572ae7f9a219c11cf21399b/examples/code/01.Table_1.r#L7)中，我使用了`'examples/data/table1_data.csv'`。如果你把[examples](https://github.com/lizhiwei1994/How-to-plot-in-R/tree/main/examples)文件下载到了D盘，那你需要把`'examples/data/table1_data.csv'`改为`'D:/examples/data/table1_data.csv'`代码才能正常运行。

## 如何获得PPT中`Resources`部分所展示的教程？
在PPT中，`Resources`部分展示的各种绘图教程等内容都是有超链接的。你可以在PPT中直接点击标题来访问对应的教程。

## 如何获得你汇报的PPT？
在这个Repository中，你可以下载[index.html](https://github.com/lizhiwei1994/How-to-plot-in-R/blob/main/index.html "index.html")文件来获得我汇报用的PPT，或者直接访问 [https://lizhiwei1994.github.io/](https://lizhiwei1994.github.io/)。这个PPT是使用[Rtudio](https://www.rstudio.com/)公司开发的[Quarto](https://quarto.org/)软件制作的。你可以查看[这个网页](https://quarto.org/docs/presentations/revealjs/demo/#/title-slide)来了解更多用[Quarto](https://quarto.org/)制作PPT的内容。

## 如何使用`ggfp`包来绘制forestplot？
你可以访问我的[另一个Repository](https://github.com/lizhiwei1994/ggfp)来了解`ggfp`包的更多内容。不过需要注意的是，我写`ggfp`包，主要是为了自己绘图的时候方便，所以我把一些我常用的设置都在`gg_fp()`函数的内部设置好了，可能不符合其他人用的要求，而且现阶段只能支持分面绘图（`facet`）。`gg_fp()`其实和直接用`ggpplot2`包绘图没有太大区别，你可以直接查看[`gg_fp()`](https://github.com/lizhiwei1994/ggfp/blob/main/R/gg_fp.r)的源代码。我还是建议大家直接使用`ggplot2`绘图。

## 如何了解更多`patchwork`包的内容？
在[reference](https://github.com/lizhiwei1994/How-to-plot-in-R/tree/main/reference)文件下有一个[Patchwork_Layouts.html](https://github.com/lizhiwei1994/How-to-plot-in-R/blob/main/reference/Patchwork_Layouts.html)是我翻译的中文版`patchwork`包的一部分教程。
你也可以从[R官网](https://cran.r-project.org/)查看`patchwork`包的[官方教程](https://cran.r-project.org/web/packages/patchwork/index.html)。
![patchwork包中文教程-李志伟](README_md_files/43f3b510-2de1-11ed-bbdc-6be45979d96c.jpeg?v=1&type=image)

## 如何重现你的PPT？
你可以直接下载这个repo，然后在Rstudio中运行[index.qmd](https://github.com/lizhiwei1994/How-to-plot-in-R/blob/main/index.qmd "index.qmd")文件来重现我的PPT。

你也可以只下载[index.qmd](https://github.com/lizhiwei1994/How-to-plot-in-R/blob/main/index.qmd "index.qmd")，[theme](https://github.com/lizhiwei1994/How-to-plot-in-R/tree/main/theme)和[examples](https://github.com/lizhiwei1994/How-to-plot-in-R/tree/main/examples)文件。然后在Rstudio中运行[index.qmd](https://github.com/lizhiwei1994/How-to-plot-in-R/blob/main/index.qmd "index.qmd")文件。

[mini section](https://github.com/lizhiwei1994/How-to-plot-in-R/tree/main/mini%20section)文件中分别储存着本次PPT所展示的三部分内容，如果你只对其中某一部分感兴趣，可以只下载某一部分。这会比直接运行[index.qmd](https://github.com/lizhiwei1994/How-to-plot-in-R/blob/main/index.qmd "index.qmd")快。
注意：[mini section](https://github.com/lizhiwei1994/How-to-plot-in-R/tree/main/mini%20section)中文件所在目录要和[index.qmd](https://github.com/lizhiwei1994/How-to-plot-in-R/blob/main/index.qmd "index.qmd")文件所在目录相同，因为`qmd`文件运行时，默认的目录为`qmd`文件所在目录，不是`R project`所在目录。
