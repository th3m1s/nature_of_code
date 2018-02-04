/// Time-stamp: <2018-02-03 20:57:31 tagashira>
/// @file
/// @brief

PImage img;//表示用イメージ

//GoogleのQRコード作成してくれるページ
String QR_google_api = "http://chart.apis.google.com/chart?";
String chs           = "150";//QRコードの大きさ

//QRコードに変換したい文字列
String chl = "Fsociety";

//Googleに渡すURLを作成する．
String URL;
URL = QR_google_api+"chs="+chs+"x"+chs+"&"+"cht=qr"+"&"+"chl="+chl;
URL = URL+"&choe=UTF-8&chld=H|8";
println("URL: "+URL);

//loadimageはHTML形式でグラフィックディスプレイファイルの読み込みが可能．
img=loadImage(URL,"PNG");

size(150, 150);
image(img, 0, 0);


String savename=chl+".png";
save(savename);



// cht=qr	必須	QRコードを作成する
// chs=<幅>x<高さ>	必須	作成するQRコードのサイズ。同じ値を指定する。
// chl=＜データ＞	必須	エンコードするデータ。数字（0～9）／英数字／バイナリデータ／漢字の指定が可能。QRコード内のデータ型は混在できない。データはUTF-8でURLエンコードする必要がある
// choe=<文字コード>	オプション	出力文字コード。以下の値から選択可能
// ・UTF-8（デフォルト）
// ・Shift_JIS
// ・ISO-8859-1
// chld=<エラー訂正レベル>|<マージン>	オプション	<エラー訂正レベル>は、QRコードの読み取り不能や間違いの修正を可能とする割合。訂正レベルが高いほどQRコードのドット数が増える。
// ・L  － 約7％が復元可能（デフォルト）
// ・M － 約15％が復元可能
// ・Q － 約25％が復元可能
// ・H － 約30％が復元可能

// <マージン>は、QRコードと画像の端までの余白幅。ピクセル数ではないので注意。デフォルトの値は「4」。
