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
### ループ処理とは
- 通常プログラムは上から下にしか処理は実行されないが、ループ処理ではある条件下でブロック単位で処理をループさせることができる。
### 拡張for文を作成してみよう
```apex
// 拡張forループ(リストに入ったフルールの中身分ループする)
// for (リストのデータ型 変数 : リスト変数) {
// }
for (String fruit : fruits) { 
  System.debug(fruit);
}
// 出力結果: Apple
// 出力結果： Orange
// 出力結果： Banana
```

# 🎉🎉🎉Congratulations!🎉🎉🎉
