# frozen_string_literal: true

module RubyPractice
  module Collections
    module_function

    # 009: Array と Hash。days は Monday から Sunday の順に返す。person は
    # { name: "Bob", age: 32, gender: "male" } を返す。assign_numbers は各名前へ 1..10 の整数を割り当てる。
    def days = raise NotImplementedError
    # print_array は要素を順に puts し、返り値ではなく標準出力を観察する。
    def print_array(_values) = raise NotImplementedError
    def contains_number?(_values, _number) = raise NotImplementedError
    def duplicate?(_values) = raise NotImplementedError
    # duplicate_with_hash? は Hash を記録用に使い、重複判定する（Set は使わない）。
    def duplicate_with_hash?(_values) = raise NotImplementedError
    def person = raise NotImplementedError
    # hash_keys/hash_values は puts で標準出力し、戻り値は評価対象にしない。
    def hash_keys(_hash) = raise NotImplementedError
    def hash_values(_hash) = raise NotImplementedError
    def increment_age(_person) = raise NotImplementedError
    def with_processed_flag(_hash) = raise NotImplementedError
    def assign_numbers(_names) = raise NotImplementedError

    # 010: 組み込みの filter/find/index/map/each を使わず、ブロックを受け取る。
    # 各ブロックには |value, index| を渡す。find は未発見なら nil、find_index は -1。
    def filter(_values) = raise NotImplementedError
    def find(_values) = raise NotImplementedError
    def find_index(_values) = raise NotImplementedError
    def some?(_values) = raise NotImplementedError
    def every?(_values) = raise NotImplementedError
    def map(_values) = raise NotImplementedError
    def each(_values) = raise NotImplementedError
  end
end
