# 命名規則(個人用)
# Apex
- ローマ字を使用しない
- 「{」の前には半角スペース
- 「,」や「:」の後には半角スペースを入れる
- 「=] の前後には半角スペース
- 「,」やメソッド後の「(」の直前にはスペースはいらない
- ifと()の間には半角スペース
```Java
if () {
}
```
- 中括弧は if else for do while 文において本体が空でも1行しかなくても使われる。
- インデント数は半角スペース4つ
```java
public void execute() {
    int count = 0;
}
```
- 改行時のインデントは半角スペース8つ
  - 例）
```java
Map<String, Map<Account, CustomAccount__c>> customAccount =
        new Map<String, Map<Account, CustomAccount__c>>();
```
- 中括弧
  - 開始中括弧の前に改行を入れない。
  - 開始中括弧の後に改行を入れる。
  - 終了中括弧の前に改行を入れる。
  - 終了中括弧の後に改行を入れる。
    - 但し、終了中括弧が文やメソッドの本体を終える時のみである。
    - 例えば終了中括弧の後に else や、カンマが続く場合は改行をしない。
## クラス名
1. アッパーキャメルケース
- Batch
  - cntl_bat_クラス名
- Scheduler
  - cntl_sch_クラス名
- Trigger
  - cntl_trg_クラス名
- Test
  - test_bat_クラス名
## メソッド名
1. ローワーキャメルケース
2. フィールドの値を操作する場合
   1. get〇〇  -> getCount()
   2. set〇〇  -> setCount()
3. 戻り値がBoolean場合
   1. is〇〇   -> isEmpty()
   2. has〇〇  -> hasChecked()
   3. can〇〇  -> canAccess()
## 変数名
1. 変数：ローワーキャメルケース
2. 定数：すべて大文字。単語の間はアンダースコア
3. あからさまに長い文字ではない限り略さない
   1. count    -> cnt
   2. number   -> num
   3. error    -> err
4. リストの場合
   1. 〇〇List -> accountList
# VisualForce/HTML
# Javascript
## クラス名
1. アッパーキャメルケース
## メソッド名
## 変数名
# Salesforce
## オブジェクト
## 項目
