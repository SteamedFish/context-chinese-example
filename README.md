---
author:
- SteamedFish
title: ConTeXt 中文示例
---

ConTeXt 中文示例 {#context-中文示例-1} ================

本文给出使用 $\CONTEXT$ 创建中文文档的一个简单的例子。

本文档使用了 [Noto Sans CJK字体](https://www.google.com/get/noto/help/cjk/)，你
系统中需要有此字体，或者你可以修改演示文档，使用任何你系统中拥有的字体。
$\CONTEXT$ 可以识别 `OSFONTDIR`环境下面绝大多数常见的 字体格式。

安装 ConTeXt ============

方法一------

如果你需要同时使用 $\LATEX$ 和 $\CONTEXT$，那么建议安装
[textlive](https://www.tug.org/texlive/)。

方法二------

如果你只需要安装 \$\CONTEXT\$，那么建议安装 [ConTeXt
Standalone](https://www.contextgarden.net/ConTeXt_Standalone)，ArchLinux 可以直
接安装 `context-minimals-git` ，其他发行版请阅读文档。

ConTeXt standalone 的更新比 texlive 会频繁很多，版本往往比较新。

macOS 一键脚本--------------

-   依赖：homebrew 和 homebrew cask
-   可以自行修改 `CONTEXT_DIR`

``` {.bash org-language="sh"}
# 安装 ConTeXt standalone
CONTEXT_DIR=$HOME/ConTeXt
mkdir ${CONTEXT_DIR}
rsync -av rsync://contextgarden.net/minimals/setup/first-setup.sh ${CONTEXT_DIR}/
# 注意这里安装所有模块，示例文档中使用了一些额外的模块。
cd ${CONTEXT_DIR} && bash ${CONTEXT_DIR}/first-setup.sh --modules=all
source ${CONTEXT_DIR}/tex/setuptex
export OSFONTDIR="/Library/Fonts/;/System/Library/Fonts/;$HOME/Library/Fonts/"
mtxrun --generate

# 安装并刷新字体索引
brew tap caskroom/fonts
brew cask install font-noto-sans-cjk-sc
mtxrun --scripts fonts --reload
# 查看已经被索引，可以使用的字体列表
mtxrun --scripts fonts --list --all

# 编译文档
context example.tex
```

ArchLinux 一键脚本------------------

``` {.bash org-language="sh"}
# 安装 ConTeXt standalone
yay -S context-minimals-git
export OSFONTDIR="/usr/local/share/fonts;$HOME/.fonts"
source /opt/context-minimals/setuptex
mtxrun --generate

# 安装并刷新字体索引
yay -S noto-fonts-cjk
mtxrun --scripts fonts --reload
# 查看已经被索引，可以使用的字体列表
mtxrun --scripts fonts --list --all

# 编译文档
context example.tex
```

ConTeXt 进一步学习材料======================

首先请注意 $\CONTEXT$ 有两个引擎，分别是 MkII 和MkIV，前者已经过时。网上很多材料
都是针对前者的。

[ConTeXt Wiki](https://www.contextgarden.net/)有一个入门文档列表，建议首先阅读。

完整的文档列表可以在 `tex/texmf-context/doc/context/documents` 中找到。

TODO 更多介绍
