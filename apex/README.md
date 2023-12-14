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
    ```java:Main.java
    public class Main {
        public void execute() {
            int age;            // 変数宣言の文（「age」という箱を用意）
            age = 25;           // 箱に数字を「25」を入れる
            System.debug(age);  // 箱の中身を表示
        }
    }
    ```
    ```text:実行結果
    25
    ```
    - 変数宣言の文
        - 変数宣言ルール
            - 禁止されている単語を使ってはならない。
            - すでに利用している変数名を再度使用してはならない。
            - 大文字・小文字・全角・半角の違いは区別されないが意識する。
            - 小文字で始まるわかりやすい名前をつけることが望ましい。
            ```
            型 変数名
            ```
        - データ型一覧
            - Integer、Double、Long、Date、Datetime、String、ID、または Booleanなどのよく使用する型（データ型）
            | 型 | リテラル | 使用例 |　サイズ | 
            | --- | --- | --- | --- |
            | ID | ID型 | ```ID actId = ‘123456789012345678’;``` | 18文字(15文字を入れた場合自動で18に変換されます) |
            | Integer | 整数型 | ```Integer count = 1;``` | 32bit | 
            | Long | データ量の多い整数型 | ```Long lg = 30000000L;``` | 64bit |
            | Double | 小数点を含む数値型 | ```Double d=3.14159;``` | 64bit |
            | Decimal | 小数点を含む数値型 | ```Decimal decimalNum = -3.05443;``` | 任意 |
            | String | 文字列型 | ```String moji = ‘aiueo’;``` | 任意 |
            | Boolean | 真偽型 | ```Boolean flag = true;``` | true、false、null |
            | Date | 日付型 | ```Date today = Date.newInstance(‘2022’, ‘12’, ‘25’);``` | 任意 |
            | Datetime | 日付時刻型 | ```Datetime now = Datetime.now();``` | 任意 |
            | Blob | バイナリデータ型 | ```Blob exampleIv = Blob.valueOf('Example of IV123');``` | 任意 |

