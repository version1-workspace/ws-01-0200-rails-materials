# frozen_string_literal: true

module RubyPractice
  module Practice
    module_function

    # 014: 基礎・中級・複合問題。禁止されている組み込みメソッドは各設問のコメントを守る。
    # manual_string_length / manual_array_size は length/size を使わない。average は小数を切り捨てる。
    def manual_string_length(_text) = raise NotImplementedError
    def reverse_text(_text) = raise NotImplementedError
    def character_index(_text, _character) = raise NotImplementedError
    def split_text(_text, _separator) = raise NotImplementedError
    def array_sum(_values) = raise NotImplementedError
    def average(_values) = raise NotImplementedError
    def concatenate_arrays(_left, _right) = raise NotImplementedError
    def manual_array_size(_values) = raise NotImplementedError
    # min_max は空配列なら nil、そうでなければ { min:, max: } を返す。
    def min_max(_values) = raise NotImplementedError
    # sequence(n) は 0 以上 n 未満、odd_sequence(n) は 1 以上 n 以下の奇数を返す。
    def sequence(_number) = raise NotImplementedError
    def odd_sequence(_number) = raise NotImplementedError
    def below_or_equal(_values, _number) = raise NotImplementedError
    # fizz_buzz は 1..100 の配列を返す。3の倍数は Fizz、5の倍数は Buzz、両方なら FizzBuzz。
    def fizz_buzz = raise NotImplementedError
    # rotate は正数なら右へ、負数なら左へ回す。例: rotate("library", 1) => "ylibrar"。
    def rotate(_text, _count) = raise NotImplementedError
    def remove_vowels(_text) = raise NotImplementedError
    # count_occurrences は重ならない出現回数を返す。
    def count_occurrences(_text, _query) = raise NotImplementedError
    def palindrome?(_text) = raise NotImplementedError
    def prime?(_number) = raise NotImplementedError
    # 4 と直後の値を合計から除く。連続する 4 はそれぞれ次の値を除外する。
    # 例: [4, 4, 1, 2] => 2。
    def sum_skipping_four_and_next(_values) = raise NotImplementedError
    def flatten_once(_values) = raise NotImplementedError
    def to_boolean_map(_ids) = raise NotImplementedError
    def hash_to_list(_hash) = raise NotImplementedError
    def ids(_records) = raise NotImplementedError
    def merge_unique(_left, _right) = raise NotImplementedError
    def intersection(_left, _right) = raise NotImplementedError
    # merge_records_by_id は left の順を保ち、同じ :id は Hash#merge で right の値を優先する。
    # right にだけある id は right 側の順で末尾へ追加する。入力配列と Hash は変更しない。
    def merge_records_by_id(_left, _right) = raise NotImplementedError
    # nested_count_sum は Array/Hash を再帰でたどり、見つかった :count の数値を合計する。
    def nested_count_sum(_data) = raise NotImplementedError
  end
end
