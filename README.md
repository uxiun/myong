# 概要
使っている [《倉頡平台2012》正式推出（19-09-2011更新） - 倉頡程式下載及技術支援 - 康熙字典与倉頡之友 - Powered by Discuz!](https://chinesecj.com/forum/forum.php?mod=viewthread&tid=2596) の「外掛版本 (= portable version)」の中身です。 portable なおかげで Windows 組み込みの `Win + Space`で切り替えて使うIMEと併用できます。

書式・挙動等の詳しい仕様は、公式に当たるのもいいですが（情報が少ないし中国語でつらかったので）、.yong/内の各 file に書き込まれたメモも参照してください。

file が散らかっていますが必須は以下に挙げるものくらいで、他はだいたい表や辞書類です。

- .yong/
	- yong.ini (全体設定、起点)
- *.bin
- *.chm
- *.dll
- *.exe
- *.so
- (*.ini)?
	- ここのyong.iniより .yong/ 内のものが優先されるので要らないかも
- *.xml
- *.他見慣れない拡張子


# 機能
- 表切り替え
- 表ごとに10?までの辞書。入力できる語句を拡張する
- 造詞
	- 直前に入力した語句にその場で綴を割り当てて辞書に追加する（SKKに似ている）。予め規則を定めてはじめから割り当てる綴が入力された状態にしておける。
- 同時打鍵の検知
	- 表ごとに間隔の設定
	- `+` として綴に使える
- 候補語句検索
	- `Alt + Enter` で `%s` に選択中の候補語句が入って設定したURLに遷移

等等

# 周辺

## 書体

候補の表示には、拼音が確認できる[jeffreyxuan/toneoz-font-pinyin-wenkai: This font is based on the font Klee One by Fontworks, and the font LXGW WenKai by LXGW for adding Simplified and Traditional Chinese character glyphs. The pinyin characters are added by ToneOZ.com using the open source tool Mengshen, with the IVS heteronyms font concept from the Bopomofo IVS by But Ko.](https://github.com/jeffreyxuan/toneoz-font-pinyin-wenkai)を使っています。

その派生元である [lxgw/LxgwWenKai: An open-source Chinese font derived from Fontworks' Klee One. 一款开源中文字体，基于 FONTWORKS 出品字体 Klee One 衍生。](https://github.com/lxgw/LxgwWenKai) も簡体字、ひらがな・カタカナ、主要なハングルとCJK全体に対応した教科書体として大変おすすめ。

# credit


以下は本家様の README (Yong_README.txt)

==========================================================================

《倉頡平台2010》至《倉頡平台2022》都是采用周永先生开发的《小小输入法平台》
，特別感谢周永先无私的付出，为中文輸入法软件做出巨大的贡献，再次申谢。
以下是《小小输入法平台》的声明：

==========================================================================

软件作者 dgod <dgod.osa@gmail.com>
对本软件的重新发布必须包含本声明
论坛 http://yong.dgod.net
软件希望能对用户有用，但软件及作者不对用户的任何使用后果负任何责任

帮助文件yong.chm		制作者是网友春意盎然，在此感谢

永码，拼音	作者就是本人

五笔				名称：五笔86极爽词库6.0标准版
						作者：窝子(wozy.in@gmail.com)

张码				作者：张建平先生
						网址：http://zmsrf.5d6d.com/
						有商业用途，请事先联系

其他码表		来自网络


==========================================================================