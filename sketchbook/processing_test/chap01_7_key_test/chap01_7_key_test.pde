String str = "count";
int count;


// 変数の初期化
// プログラム実行時，最初の一回のみ実行される．
void setup() {
  count = 0;
}

// 一定周期で実行される関数
void draw() {}

// キーボードのイベントがあるときのみ実行される関数．なにも入力が行われないときは素通り．
void keyPressed() {
  print(str);
  println(count);
  println(key);
  count++;
}
