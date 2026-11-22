# frozen_string_literal: true

module RubyPractice
  module Recursion
    module_function

    # 015: このファイルの各設問は再帰で実装する。
    # n=30 の期待値は 465（元 README の 55 は誤記だが、元テストに合わせて修正）。
    def sum_sequence(_number) = raise NotImplementedError
    # fibonacci(0) は []、fibonacci(1) は [1]、以降は [1, 1, 2, ...] を count 個返す。
    def fibonacci(_count) = raise NotImplementedError
    def flatten(_data) = raise NotImplementedError
    # node は { type: "file", size: Integer } または children を持つ folder。file の size を合計する。
    def file_size(_node) = raise NotImplementedError
  end
end
