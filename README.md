# Template_eel
## 環境構築
### コマンド, アプリ
- [magick](https://imagemagick.org/script/download.php)
  - [a derived Apache 2.0 license](https://imagemagick.org/script/license.php)
  - コマンドラインから実行できるようにpathを設定
  - iconの作成に使用
- [Google Chrome](https://www.google.com/intl/ja/chrome/)

### Python
- python ([Anaconda](https://www.anaconda.com/products/individual))
  - [Anaconda インストール手順](https://www.python.jp/install/anaconda/index.html)
    - コマンドから conda が実行できるように Anaconda3/condabin にpathを設定
- [pyinstaller](https://anaconda.org/anaconda/pyinstaller)
  - GPL 2
  - exe化するために使用
- [eel](https://github.com/samuelhwilliams/Eel)
  - MIT License
  - Anacondaからターミナルを開き以下を実行することでインストール
    ```
    conda activate ＜作成した環境名＞
    pip install eel
    ```
- [plyer](https://github.com/kivy/plyer)
  - MIT License
  - デスクトップ通知に使用
  - Anacondaからターミナルを開き以下を実行することでインストール
    ```
    conda activate ＜作成した環境名＞
    pip install plyer
    ```

### HTML, CSS, Javascript
- [Bootstrap](https://github.com/twbs/bootstrap/releases) v.4.5.3
  - MIT License
- [jQuery](https://jquery.com/download/) v.3.5.1
  - MIT License
- [Popper.js](https://github.com/popperjs/popper-core/releases/tag/v1.16.0) v.1.16.0
  - MIT License
  - BootstrapのCDNからの参照がv.1.16.0であるため
- [Vue.js](https://github.com/vuejs/vue/releases) v.2.6.11
  - MIT License
- [Vue.Draggable](https://github.com/SortableJS/Vue.Draggable/releases) v.2.24.0
  - MIT License
- [sortablejs](https://github.com/SortableJS/sortablejs/releases) v.1.10.2
  - MIT License
