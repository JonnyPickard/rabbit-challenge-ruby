require 'spec_helper'
require_relative "../lib/rabbit"

describe "#answer" do

  it "returns the correct answer to q 1" do
    input  = ["annie", "bonnie", "liz"]
    output = ["bonnie", "liz", "annie"]

    expect(answer(input)).to eq(output)
  end

  it "returns the correct answer to q 1" do
    input  = ["abcdefg", "vi"]
    output = ["vi", "abcdefg"]

    expect(answer(input)).to eq(output)
  end
end
