基本配置已经写好，插件安装具体参考：

参考：https://vim.ink/vim-ide-base.html

参考：https://vim.ink/vim-plug.html

[Vundle](https://vim.ink/vim-plugin-manager.html)是一款非常出名且历史悠久的Vim插件管理工具。但随着安装的vim插件越来越多，使用Vundle来管理这些插件时效率变得越来越低，vim启动耗时也越来越大。

而[vim-plug](https://github.com/junegunn/vim-plug)是一款非常轻量又高效的vim插件管理工具。它支持全异步、多线程并行安装插件，支持git分支、标签等，可以对插件进行回滚更新、还支持**按需加载**插件(On-demand loading)，可以指定对特定文件类型加载对应vim插件，大大加快了vim启动时间。

#### 1.1 安装vim-plug插件管理器

vim-plug使用github进行托管和维护，只需要下载对应的 [plug.vim](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim) 文件并保存到 **autoload** 目录即可完成安装。

ubuntu系统下可使用以下命令快速安装vim-plug。

```
mkdir ~/.vim/autoload/
cd ~/.vim/autoload/
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

或使用curl工具来简化下载过程。

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### 1.2 vim-plug配置介绍

使用vim-plug安装vim插件的方法与另外一个著名的[vim插件管理器Vundle](https://vim.ink/vim-plugin-manager.html)非常相似，只需要在vim配置文件 `~/.vimrc` 增加以 `call plug#begin(PLUGIN_DIRECTORY)` 开始，并以 `plug#end()` 结束的配置段即可。

下面是一个典型的vim-plug的配置实例，使用了多种vim-plug相关的配置形式。

```
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
call plug#end()
```
