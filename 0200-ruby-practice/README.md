# Ruby 基本課題

フロントエンド教材の JavaScript 基本課題と同じ順序で、Ruby の文法、配列・Hash、ブロック、クラス、データ構造、アルゴリズム、再帰を練習する教材です。

## 注意事項

この課題はコーディングエージェントを使用せずに実装してください。各メソッドについて、入力・出力・使った Ruby の機能を口頭で説明できる程度まで理解して進めます。

## 課題の進め方

### はじめ方

```bash
bundle install
bundle exec rspec
```

Ruby 4.0.7 を使います。各演習は `lib/ruby_practice/` にあり、最初は `NotImplementedError` を送出します。対応する spec は未実装の間だけ pending になります。実装後に期待値と異なる結果や別の例外が出れば、テストは失敗します。

### 課題の順番

| 順番 | ファイル | 内容 |
| --- | --- | --- |
| 1 | `syntax.rb` | 変数、四則演算、条件分岐、ループ、String |
| 2 | `collections.rb` | Array、Hash、ブロック、自作の高階メソッド |
| 3 | `classes.rb` | クラス、継承、リスト、スタック、キュー |
| 4 | `practice.rb` | 文字列・配列・複合データのアルゴリズム |
| 5 | `recursion.rb` | 数列、フィボナッチ、多次元配列、木構造 |

各 `NotImplementedError` を、設問単位で1つずつ実装してください。既存の Ruby の同名メソッドを呼ぶのではなく、設問で指定された処理をループや再帰で書く箇所があります。

[課題完了チェックリスト](#課題完了チェックリスト)で、完了条件を確認してください。

## Ruby 版で明確にした違い

- `quotient` は 0 で割ると `nil` を返し、通常時は `fdiv` などで `Float` を返します。
- Person などの属性 Hash はシンボルキーを用います。一方、`to_boolean_map` は整数キー、`assign_numbers` は名前の文字列キーを使います。入力を変更してはいけない設問は、新しい Hash を返します。
- JavaScript のコールバックは Ruby のブロックに置き換え、要素と添字を渡します。
- 年齢20未満の条件は元教材を引き継いだ演習ルールです。
- 再帰の `sum_sequence(30)` は 465 です。元 README にある 55 は誤記で、元テストの期待値に合わせています。

## 学ぶキーワード

- Ruby の基本文法、String、Array、Hash
- ブロック、高階メソッド、クラスと継承
- リスト、スタック、キュー、アルゴリズム、再帰

## 課題完了チェックリスト

- [ ] [課題の順番](#課題の順番)にある5ファイルの全設問を実装した。
- [ ] 課題ディレクトリで `bundle exec rspec` を実行し、失敗・pending がともに0件であることを確認した。
- [ ] 各メソッドの入力・出力・使った Ruby の機能を自分の言葉で説明できる。

## 参考

- [Ruby 公式ドキュメント](https://docs.ruby-lang.org/ja/)
- [Ruby の Array](https://docs.ruby-lang.org/ja/latest/class/Array.html)
- [Ruby の Hash](https://docs.ruby-lang.org/ja/latest/class/Hash.html)

## FAQ

[よくある質問](docs/faq.md)を参照してください。
