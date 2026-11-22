# frozen_string_literal: true

require "ruby_practice"

RSpec.configure do |config|
  config.expect_with(:rspec) { |expectations| expectations.syntax = :expect }
end

def pending_while_unimplemented
  yield
rescue NotImplementedError
  skip("この設問は未実装です。実装後にこの期待値を満たしてください。")
end
