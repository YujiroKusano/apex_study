# LESSON8
## リストについて覚えよう
```apex
// List<データ型> 変数名　= new List<データ型>();
List<String> fruits = new List<String>(); // 文字列型のリストを作成
fruits.add('Apple'); // 文字列型のリストに文字列を追加
fruits.add('Orange'); // 文字列型のリストに文字列を追加
fruits.add('Banana'); // 文字列型のリストに文字列を追加
```

## for文を覚えよう
### 拡張for文を作成してみよう
```apex
// for (リストのデータ型 変数 : リスト変数) {
// }
for (String fruit : fruits) { // 拡張forループ(リストの中身を順番にfruitの中に入れる)
  System.debug(fruit); // fruitを
}

// 出力結果: Apple
// 出力結果： Orange
// 出力結果： Banana
```

## IF文で色々試してみよう！
1. 何がどの処理が実施されるかな？
    ```apex
    if (false) {
        // 処理1
    } else if (true) {
        // 処理2
    } else {
        // 処理3
    }
    ```
# 🎉🎉🎉Congratulations!🎉🎉🎉
