# frozen_string_literal: true

module RubyPractice
  # 011: attr_accessor、クラスメソッド、インスタンスメソッドを練習する。
  class Person
    # initialize(name = "", age = 0, bio = "")。#say_hi は "Hi!!"、.describe は
    # "This is a Person class" を puts する。#under_twenty? は age < 20。
    # #to_s は "name: {name}, age: {age}, bio: {bio}" を返す。
    def initialize(*) = raise NotImplementedError
    def self.describe = raise NotImplementedError
    def say_hi = raise NotImplementedError
    def name = raise NotImplementedError
    def age = raise NotImplementedError
    def bio = raise NotImplementedError
    def under_twenty? = raise NotImplementedError
    def to_s = raise NotImplementedError
  end

  # 012: 継承。Animal を継承した Dog、Duck、Chicken を実装する。
  class Animal
    # #type は文字列を返す。#breathe は "breezing" を返す。#sound は文字列を返す。
    # Dog は type "dog" / sound "wang, wang!"、Duck は "duck" / "quack, quack!"、
    # Chicken は "chicken" / "cock-a-doodle-do!"。
    def initialize(*) = raise NotImplementedError
    def type = raise NotImplementedError
    def breathe = raise NotImplementedError
    def sound = raise NotImplementedError
  end

  class Dog < Animal; end
  class Duck < Animal; end
  class Chicken < Animal; end

  # 013: Array の実装を観察するための数値リスト、スタック、キュー。
  class NumberList
    # 数値の配列を受け取る。#at は 0 以上の添字だけを受け、負の添字は nil を返す。
    # #remove はその添字を削除して要素を返す。#find は未発見なら nil、#find_index は -1。
    # #without は指定値に一致する要素をすべて除外し、元の data を変更しない新しい NumberList を返す。
    def initialize(*) = raise NotImplementedError
    def size = raise NotImplementedError
    def at(*) = raise NotImplementedError
    def push(*) = raise NotImplementedError
    def remove(*) = raise NotImplementedError
    def pop = raise NotImplementedError
    def shift = raise NotImplementedError
    def find(*) = raise NotImplementedError
    def find_index(*) = raise NotImplementedError
    def without(*) = raise NotImplementedError
  end

  class Stack
    # LIFO。push は末尾へ追加、pop は末尾を取り出す、peek は取り出さず参照する。
    def initialize(*) = raise NotImplementedError
    def size = raise NotImplementedError
    def push(*) = raise NotImplementedError
    def pop = raise NotImplementedError
    def peek = raise NotImplementedError
  end

  class Queue
    # FIFO。enqueue は末尾へ追加、dequeue は先頭を取り出す、peek は先頭を取り出さず参照する。
    def initialize(*) = raise NotImplementedError
    def size = raise NotImplementedError
    def enqueue(*) = raise NotImplementedError
    def dequeue = raise NotImplementedError
    def peek = raise NotImplementedError
  end
end
