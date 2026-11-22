# frozen_string_literal: true

module RubyPractice
  module Syntax
    module_function

    # 001: puts を使い "Hello World" を表示する。
    def hello_world = raise NotImplementedError
    # Ruby の定数 HOGE = "hoge" を定義して値を返す。
    def display_constant = raise NotImplementedError
    # 002: "hoge" をローカル変数に入れ、表示する。
    def display_local = raise NotImplementedError
    # 003: 引数を表示する。
    def display_argument(_value) = raise NotImplementedError
    # 004: 二つの数値を加算・減算・乗算する。
    def sum(_left, _right) = raise NotImplementedError
    def subtract(_left, _right) = raise NotImplementedError
    def product(_left, _right) = raise NotImplementedError
    # 005: 右辺が 0 のときは nil、そうでなければ Float の商を返す。
    def quotient(_left, _right) = raise NotImplementedError
    def remainder(_value) = raise NotImplementedError
    def even?(_value) = raise NotImplementedError
    def concatenate(_left, _right) = raise NotImplementedError

    # 006: 年齢が 20 未満なら "未成年です。"、それ以外は "成年です。" を返す演習。
    # これは元教材の条件を引き継ぐ演習ルールであり、法的な成年の説明ではない。
    def age_message(_age) = raise NotImplementedError
    # hour: 4..11 => Good Morning、12..16 => Hello、それ以外 => Good Night。
    def greeting(_hour) = raise NotImplementedError
    def day_name(_day) = raise NotImplementedError

    # 007: for / while で 0..10 の配列を昇順・降順に作る。
    def ascending_with_for = raise NotImplementedError
    def descending_with_for = raise NotImplementedError
    def ascending_with_while = raise NotImplementedError
    def descending_with_while = raise NotImplementedError

    # 008: String の操作。substring は開始位置と終了位置を含む。
    def string_length(_text) = raise NotImplementedError
    def length_even?(_text) = raise NotImplementedError
    def first_character(_text) = raise NotImplementedError
    def last_character(_text) = raise NotImplementedError
    # substring は 0 始まりで from..to（両端を含む）を返す。
    def substring(_text, _from, _to) = raise NotImplementedError
    def include_text?(_text, _query) = raise NotImplementedError
    def characters(_text) = raise NotImplementedError
  end
end
