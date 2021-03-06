## 正規表現
Regix関数・・・正規表現の値と一致する場合はTRUEが変える
第一引数・・・判定対象文字列
第二引数・・・正規表現文字列

正規表現例

### 範囲

例) 0~9までの文字列
```"[0-9]"```

例) 大文字のアルファベットのいずれかの文字列
```"[A-Z]"```

例) 小文字のアルファベットのいずれかの文字列
```"[a-z]"```

例) 全角カタカナのいずれかの文字列
```"[ァ-ヴ]"```

例) 半角カタカナのいずれかの文字列
```"[ｦ-ﾟ]"```
```"[\\uff61-\\uff9f]"```

例) 全角ひらがな
```"[ぁ-んー]"```

例) abcのいずれかの文字列
```"[abc]"```

例) abcのいずれでもない文字列
```"^[abc]"```

### 文字数

例) 3文字の文字列
```"{3}"```

例) 任意の０文字以上
```".*"```

### 組み合わせ

例) 0から5またはAからEまたはaからcのいずれかの値
```"[0-5A-Ea-c]"```

例) 大文字アルファベット10文字いないの文字列
```"[A-Z]{10}"```

例) 

> [Salesforce](https://help.salesforce.com/s/articleView?id=000334073&type=1)
> 
> [Java™ Platform Standard Ed. 6](http://java.sun.com/javase/6/docs/api/java/util/regex/Pattern.html)
> 
> [基本的な正規表現一覧](https://murashun.jp/article/programming/regular-expression.html)

