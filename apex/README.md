以下のURLに移行
「APEX入門」
https://sigulog.com/2023/03/08/apex%e5%85%a5%e9%96%80/


1. Apex入門
    プログラムの実行手順
    1. ソースコードの作成
    2. コンパイル
    3. 実行
2. Apexの基本構造
    1. ブロック構造について
    2. クラス/メソッドについて
    4. インデントについて
        - 行頭にタブ（2つまたは4つ半角スペース）を置くこと。
        - ブロックの開始で１つのインデントを入れる。
        - ブロックの終了で１つのインデントを下げる。
    5. コメントについて
```Main.java
// コメント本文（行末まで）
/* 
　　コメント本文（複数行可能）
*/
public class Main { // クラス名「Main」 
    // クラスブロック
    public void execute() {  // メソッド名「execute」
        //メソッドブロック
    }
}
```
3. 変数宣言
    1. 変数宣言の文
    ```Main.java
    public class Main {
        public void execute() {
            int age;
            age = 25;
            System.debug(age);
        }
    }
    ```
    ```実行結果
    25
    ```