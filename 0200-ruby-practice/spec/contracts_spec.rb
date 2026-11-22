# frozen_string_literal: true

require "spec_helper"

# 1契約 = 1 example。未実装の契約だけが pending になり、別の実装済み契約を隠さない。
RSpec.describe "Ruby practice contracts" do
  def self.contract(name, &block)
    it(name) { pending_while_unimplemented { instance_exec(&block) } }
  end

  contract("sum") { expect(RubyPractice::Syntax.sum(2, 3)).to eq(5) }
  contract("display_constant") { expect(RubyPractice::Syntax.display_constant).to eq("hoge") }
  contract("subtract") { expect(RubyPractice::Syntax.subtract(8, 3)).to eq(5) }
  contract("product") { expect(RubyPractice::Syntax.product(3, 4)).to eq(12) }
  contract("quotient") { expect(RubyPractice::Syntax.quotient(5, 2)).to eq(2.5) }
  contract("quotient zero") { expect(RubyPractice::Syntax.quotient(1, 0)).to be_nil }
  contract("remainder") { expect(RubyPractice::Syntax.remainder(7)).to eq(1) }
  contract("even?") { expect(RubyPractice::Syntax.even?(8)).to be(true) }
  contract("age_message") { expect(RubyPractice::Syntax.age_message(19)).to eq("未成年です。") }
  contract("greeting") { expect(RubyPractice::Syntax.greeting(4)).to eq("Good Morning") }
  contract("day_name") { expect(RubyPractice::Syntax.day_name(0)).to eq("Sunday") }
  contract("ascending_with_for") { expect(RubyPractice::Syntax.ascending_with_for).to eq((0..10).to_a) }
  contract("descending_with_while") { expect(RubyPractice::Syntax.descending_with_while).to eq((0..10).to_a.reverse) }
  contract("string_length") { expect(RubyPractice::Syntax.string_length("ruby")).to eq(4) }
  contract("substring") { expect(RubyPractice::Syntax.substring("workplace", 0, 3)).to eq("work") }
  contract("characters") { expect(RubyPractice::Syntax.characters("ruby")).to eq(%w[r u b y]) }
  contract("hello_world") { expect { RubyPractice::Syntax.hello_world }.to output("Hello World\n").to_stdout }
  contract("display_local") { expect { RubyPractice::Syntax.display_local }.to output("hoge\n").to_stdout }
  contract("display_argument") { expect { RubyPractice::Syntax.display_argument("ruby") }.to output("ruby\n").to_stdout }
  contract("concatenate") { expect(RubyPractice::Syntax.concatenate("ru", "by")).to eq("ruby") }
  contract("length_even?") { expect(RubyPractice::Syntax.length_even?("ruby")).to be(true) }
  contract("first_character") { expect(RubyPractice::Syntax.first_character("ruby")).to eq("r") }
  contract("last_character") { expect(RubyPractice::Syntax.last_character("ruby")).to eq("y") }
  contract("include_text?") { expect(RubyPractice::Syntax.include_text?("ruby", "u")).to be(true) }
  contract("ascending_with_while") { expect(RubyPractice::Syntax.ascending_with_while).to eq((0..10).to_a) }
  contract("descending_with_for") { expect(RubyPractice::Syntax.descending_with_for).to eq((0..10).to_a.reverse) }

  contract("days") { expect(RubyPractice::Collections.days).to eq(%w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]) }
  contract("print_array") { expect { RubyPractice::Collections.print_array([1, 2]) }.to output("1\n2\n").to_stdout }
  contract("duplicate_with_hash?") { expect(RubyPractice::Collections.duplicate_with_hash?([1, 2, 2])).to be(true) }
  contract("contains_number?") { expect(RubyPractice::Collections.contains_number?([1, 2, 3], 2)).to be(true) }
  contract("duplicate?") { expect(RubyPractice::Collections.duplicate?([1, 2, 2])).to be(true) }
  contract("person") { expect(RubyPractice::Collections.person).to eq({ name: "Bob", age: 32, gender: "male" }) }
  contract("with_processed_flag") { expect(RubyPractice::Collections.with_processed_flag({ alpha: true })).to eq({ alpha: true, processed: true }) }
  contract("filter") { expect(RubyPractice::Collections.filter([2, 4, 7]) { |value, index| value.even? && index.positive? }).to eq([4]) }
  contract("find") { expect(RubyPractice::Collections.find([3, 5, 8]) { |value, _index| value.even? }).to eq(8) }
  contract("find_index") { expect(RubyPractice::Collections.find_index([3, 5, 8]) { |value, _index| value == 5 }).to eq(1) }
  contract("some?") { expect(RubyPractice::Collections.some?([1, 3, 4]) { |value, _index| value.even? }).to be(true) }
  contract("every?") { expect(RubyPractice::Collections.every?([2, 4]) { |value, _index| value.even? }).to be(true) }
  contract("map") { expect(RubyPractice::Collections.map([1, 2]) { |value, index| value + index }).to eq([1, 3]) }
  contract("hash_keys") { expect { RubyPractice::Collections.hash_keys({ a: 1, b: 2 }) }.to output("a\nb\n").to_stdout }
  contract("hash_values") { expect { RubyPractice::Collections.hash_values({ a: 1, b: 2 }) }.to output("1\n2\n").to_stdout }
  contract("increment_age") { expect(RubyPractice::Collections.increment_age({ name: "a", age: 1 })).to eq({ name: "a", age: 2 }) }
  contract("assign_numbers") { expect(RubyPractice::Collections.assign_numbers(["Bob"]).fetch("Bob")).to be_between(1, 10) }
  contract("each") { values = []; RubyPractice::Collections.each([2, 3]) { |value, index| values << value + index }; expect(values).to eq([2, 4]) }

  contract("Person initialize") { expect(RubyPractice::Person.new("ichiro", 19, "baseball").name).to eq("ichiro") }
  contract("Animal subclass") { expect(RubyPractice::Dog.new.type).to eq("dog") }
  contract("NumberList") { expect(RubyPractice::NumberList.new([1, 2]).size).to eq(2) }
  contract("Stack") { stack = RubyPractice::Stack.new; stack.push(1); expect(stack.pop).to eq(1) }
  contract("Queue") { queue = RubyPractice::Queue.new; queue.enqueue(1); expect(queue.dequeue).to eq(1) }
  contract("Person.describe") { expect { RubyPractice::Person.describe }.to output("This is a Person class\n").to_stdout }
  contract("Person.say_hi") { expect { RubyPractice::Person.new.say_hi }.to output("Hi!!\n").to_stdout }
  contract("Person.age") { expect(RubyPractice::Person.new("a", 20, "b").age).to eq(20) }
  contract("Person.bio") { expect(RubyPractice::Person.new("a", 20, "b").bio).to eq("b") }
  contract("Animal.breathe") { expect(RubyPractice::Dog.new.breathe).to eq("breezing") }
  contract("Dog.sound") { expect(RubyPractice::Dog.new.sound).to eq("wang, wang!") }
  contract("Chicken.sound") { expect(RubyPractice::Chicken.new.sound).to eq("cock-a-doodle-do!") }

  contract("manual_string_length") { expect(RubyPractice::Practice.manual_string_length("ruby")).to eq(4) }
  contract("reverse_text") { expect(RubyPractice::Practice.reverse_text("library")).to eq("yrarbil") }
  contract("array_sum") { expect(RubyPractice::Practice.array_sum([1, 3, 7, 9])).to eq(20) }
  contract("average") { expect(RubyPractice::Practice.average([1, 3, 7, 9])).to eq(5) }
  contract("odd_sequence") { expect(RubyPractice::Practice.odd_sequence(5)).to eq([1, 3, 5]) }
  contract("rotate") { expect(RubyPractice::Practice.rotate("library", 3)).to eq("arylibr") }
  contract("remove_vowels") { expect(RubyPractice::Practice.remove_vowels("banana")).to eq("bnn") }
  contract("palindrome?") { expect(RubyPractice::Practice.palindrome?("level")).to be(true) }
  contract("prime?") { expect(RubyPractice::Practice.prime?(11)).to be(true) }
  contract("sum_skipping_four_and_next") { expect(RubyPractice::Practice.sum_skipping_four_and_next([4, 4, 1, 2])).to eq(2) }
  contract("flatten_once") { expect(RubyPractice::Practice.flatten_once([[1, 2], [3, 4]])).to eq([1, 2, 3, 4]) }
  contract("to_boolean_map") { expect(RubyPractice::Practice.to_boolean_map([1, 3])).to eq({ 1 => true, 3 => true }) }
  contract("merge_unique") { expect(RubyPractice::Practice.merge_unique([1, 2, 3], [3, 4])).to eq([1, 2, 3, 4]) }
  contract("intersection") { expect(RubyPractice::Practice.intersection([3, 1, 2], [1, 2, 5])).to eq([1, 2]) }
  contract("character_index") { expect(RubyPractice::Practice.character_index("ruby", "b")).to eq(2) }
  contract("split_text") { expect(RubyPractice::Practice.split_text("a,b", ",")).to eq(%w[a b]) }
  contract("concatenate_arrays") { expect(RubyPractice::Practice.concatenate_arrays([1], [2])).to eq([1, 2]) }
  contract("manual_array_size") { expect(RubyPractice::Practice.manual_array_size([1, 2])).to eq(2) }
  contract("min_max") { expect(RubyPractice::Practice.min_max([2, -1, 5])).to eq({ min: -1, max: 5 }) }
  contract("sequence") { expect(RubyPractice::Practice.sequence(3)).to eq([0, 1, 2]) }
  contract("below_or_equal") { expect(RubyPractice::Practice.below_or_equal([1, 7, 5], 5)).to eq([1, 5]) }
  contract("fizz_buzz") { expect(RubyPractice::Practice.fizz_buzz.values_at(2, 4, 14)).to eq(["Fizz", "Buzz", "FizzBuzz"]) }
  contract("count_occurrences") { expect(RubyPractice::Practice.count_occurrences("abcdabeabc", "abc")).to eq(2) }
  contract("hash_to_list") { expect(RubyPractice::Practice.hash_to_list({ a: 1, b: 2 })).to eq([:a, 1, :b, 2]) }
  contract("ids") { expect(RubyPractice::Practice.ids([{ id: 1 }, { id: 2 }])).to eq([1, 2]) }
  contract("merge_records_by_id") { expect(RubyPractice::Practice.merge_records_by_id([{ id: 1, a: 1 }], [{ id: 1, b: 2 }])).to eq([{ id: 1, a: 1, b: 2 }]) }
  contract("nested_count_sum") { expect(RubyPractice::Practice.nested_count_sum([{ count: 1, a: { count: 2 } }])).to eq(3) }

  contract("sum_sequence") { expect(RubyPractice::Recursion.sum_sequence(30)).to eq(465) }
  contract("fibonacci") { expect(RubyPractice::Recursion.fibonacci(5)).to eq([1, 1, 2, 3, 5]) }
  contract("recursive flatten") { expect(RubyPractice::Recursion.flatten([[[1, 2], [3, [4]]]])).to eq([1, 2, 3, 4]) }
  contract("file_size") { expect(RubyPractice::Recursion.file_size({ type: "folder", children: [{ type: "file", size: 5 }] })).to eq(5) }

  # すべての独立スタブを個別に呼ぶ網羅契約。上の期待値テストと併せ、実装済みの別設問を pending が隠さない。
  contract("Person#under_twenty?") { expect(RubyPractice::Person.new("a", 19, "b").under_twenty?).to be(true) }
  contract("Person#to_s") { expect(RubyPractice::Person.new("a", 20, "b").to_s).to eq("name: a, age: 20, bio: b") }
  contract("NumberList#at") { expect(RubyPractice::NumberList.new([1, 2]).at(1)).to eq(2) }
  contract("NumberList#push") { list = RubyPractice::NumberList.new([1]); list.push(2); expect(list.size).to eq(2) }
  contract("NumberList#remove") { expect(RubyPractice::NumberList.new([1, 2]).remove(0)).to eq(1) }
  contract("NumberList#pop") { expect(RubyPractice::NumberList.new([1, 2]).pop).to eq(2) }
  contract("NumberList#shift") { expect(RubyPractice::NumberList.new([1, 2]).shift).to eq(1) }
  contract("NumberList#find") { expect(RubyPractice::NumberList.new([1, 2]).find(2)).to eq(2) }
  contract("NumberList#find_index") { expect(RubyPractice::NumberList.new([1, 2]).find_index(2)).to eq(1) }
  contract("NumberList#without") { expect(RubyPractice::NumberList.new([1, 2]).without(1).size).to eq(1) }
  contract("NumberList#at rejects negative index") { expect(RubyPractice::NumberList.new([1, 2]).at(-1)).to be_nil }
  contract("NumberList#without does not mutate source") { list = RubyPractice::NumberList.new([1, 1, 2]); list.without(1); expect(list.size).to eq(3) }
  contract("Stack#peek") { stack = RubyPractice::Stack.new; stack.push(1); expect(stack.peek).to eq(1) }
  contract("Queue#peek") { queue = RubyPractice::Queue.new; queue.enqueue(1); expect(queue.peek).to eq(1) }
  contract("Duck.type") { expect(RubyPractice::Duck.new.type).to eq("duck") }
  contract("Duck.sound") { expect(RubyPractice::Duck.new.sound).to eq("quack, quack!") }
  contract("Chicken.type") { expect(RubyPractice::Chicken.new.type).to eq("chicken") }
  contract("Stack size") { expect(RubyPractice::Stack.new.size).to eq(0) }
  contract("Queue size") { expect(RubyPractice::Queue.new.size).to eq(0) }
  contract("Stack LIFO") { stack = RubyPractice::Stack.new; stack.push(1); stack.push(2); expect([stack.peek, stack.pop, stack.pop, stack.pop]).to eq([2, 2, 1, nil]) }
  contract("Stack peek non-destructive") { stack = RubyPractice::Stack.new; stack.push(1); stack.peek; expect(stack.size).to eq(1) }
  contract("Queue FIFO") { queue = RubyPractice::Queue.new; queue.enqueue(1); queue.enqueue(2); expect([queue.peek, queue.dequeue, queue.dequeue, queue.dequeue]).to eq([1, 1, 2, nil]) }
  contract("Queue peek non-destructive") { queue = RubyPractice::Queue.new; queue.enqueue(1); queue.peek; expect(queue.size).to eq(1) }
end
