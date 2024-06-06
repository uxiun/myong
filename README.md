# 概要
使っている [《倉頡平台2012》正式推出（19-09-2011更新） - 倉頡程式下載及技術支援 - 康熙字典与倉頡之友 - Powered by Discuz!](https://chinesecj.com/forum/forum.php?mod=viewthread&tid=2596) の「外掛版本 (= portable version)」の中身です。 portable なおかげで Windows 組み込みの `Win + Space`で切り替えて使うIMEと併用できます。形態素解析を必要としない、綴と出力が一対一対応する体系なら、倉頡に限らず設定できます。

ここに含まれる輸出法（定義表系列）
- 私の改造倉頡
- 倉頡輸入法
	- 倉頡三代
 	- 倉頡五代
  	- 速成
- [小小音形，一个简拼加笔画的输入法，新增云剪贴板 v2023-09-02 - 『精品软件区』 - 吾爱破解 - LCG - LSG |安卓破解|病毒分析|www.52pojie.cn](https://www.52pojie.cn/thread-1813406-1-1.html)
- 私の環境で打鍵しやすい三連鍵を韩文に対応させたもの（人工言語用）

書式・挙動等の詳しい仕様は、公式に当たるのもいいですが、中国語が辛ければ私が現在使っている定義表 `index/cjphobia` に書き込まれたメモも参照してください。

公式文档
- [小小输入法入门指南 - yong lin 2.5.0 Documentation](https://documentation.help/yong-lin-2.5.0/jj.htm)
- [码表格式和设置 - 帮助 - 小小输入法 - Powered by phpwind](https://yong.dgod.net/read.php?tid=11&fid=7)

## 文件構成
file が散らかっていますが必須は以下に挙げるものくらいで、他は定義表や辞書類です。
### 必須
- .yong/
	- yong.ini (全体設定、起点)
- skin/
	- 輸出法の状態表示
- tsf/
	- TSFでWindowsのIMEとして install する用（組み込みIMEと併用したいので私は使っていない）
- *.exe
- *.so
- (*.ini)?
	- ここのyong.iniより .yong/ 内のものが優先されるので要らないかも
- *.xml
- *.他見慣れない拡張子
	- よくわからないのでそのままにしている
### 其他
- mb/ (碼表？)
	- 定義表が入っている。以下に挙げたもの以外は大体私が追加した。
 	- cj* (cangjie) 倉頡
  	- ebz* 小小音形 。うちいくつかencodeを誤って壊れた。
  	- ziz* 小小音形の一文字綴（声母+第一二筆形+筆+筆+筆）
  	- assist/ 補助表
- index/
	- 重要なもの置き場。私の使っていた改造表とその元となった倉頡

# 機能
- 定義表切り替え
	- 但しあまりに巨大な表だと動かなかったり小小輸入法自体が動かなくなったりする。
- 辞書
	- 表ごとに10?までの辞書。入力できる語句を拡張する。
	- 本定義表の定義は下記造詞に使えるが、辞書の定義は使えないなどの違いがある。
 	- 定義表は`encode=UTF-8`行による指定ができるが、辞書文件は encode: GB18030 必須
- 造詞
	- 直前に入力した語句にその場で綴を割り当てて辞書に追加する（SKKに似ている）。予め規則を定めてはじめから割り当てる綴が入力された状態にしておける。
- 同時打鍵検知
	- 表ごと、同じ/異なる手による連続打鍵ごとに、同時打鍵として検知する間隔の設定
	- 例えば `J`、`K`の順の連続打鍵は`jk+`と表され、綴の定義に組み込める。
- 変換先定義の補助・拡張
	- カーソル位置指定
 	- 日時
  	- 移動系鍵
  	- ...
- 候補語句検索
	- 変換候補が見えているとき `Alt + Enter` で `%s` に選択中の候補語句が入って設定したURLに遷移。このURL設定は全表共通

等等

# 周辺

## 書体

候補の表示には、拼音が確認できる[jeffreyxuan/toneoz-font-pinyin-wenkai: This font is based on the font Klee One by Fontworks, and the font LXGW WenKai by LXGW for adding Simplified and Traditional Chinese character glyphs. The pinyin characters are added by ToneOZ.com using the open source tool Mengshen, with the IVS heteronyms font concept from the Bopomofo IVS by But Ko.](https://github.com/jeffreyxuan/toneoz-font-pinyin-wenkai)を使っています。

その派生元である [lxgw/LxgwWenKai: An open-source Chinese font derived from Fontworks' Klee One. 一款开源中文字体，基于 FONTWORKS 出品字体 Klee One 衍生。](https://github.com/lxgw/LxgwWenKai) も簡体字、ひらがな・カタカナ、主要な韩文とCJK全体に対応した教科書体として大変おすすめ。

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
