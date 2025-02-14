# frozen_string_literal: true

require "dry/logic/predicates"

RSpec.describe Dry::Logic::Predicates, "#eql?" do
  let(:predicate_name) { :is_eql? }

  context "when value is equal to the arg" do
    let(:arguments_list) do
      [%w[Foo Foo]]
    end

    it_behaves_like "a passing predicate"
  end

  context "with value is not equal to the arg" do
    let(:arguments_list) do
      [%w[Bar Foo]]
    end

    it_behaves_like "a failing predicate"
  end
end
