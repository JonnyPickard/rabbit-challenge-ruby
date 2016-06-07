require 'spec_helper'
require_relative "../lib/rabbit"

describe "#answer" do

  it "returns the correct answer to q 1" do
    input  = ["annie", "bonnie", "liz"]
    output = ["bonnie", "liz", "annie"]

    expect(answer(input)).to eq(output)
  end

  it "returns the correct answer to q 2" do
    input  = ["abcdefg", "vi"]
    output = ["vi", "abcdefg"]

    expect(answer(input)).to eq(output)
  end

  it "returns the correct answer to q 3" do
    input  = ["abcdefg", "vi", "vi", "vi"]
    output = ["vi", "vi", "vi", "abcdefg"]

    expect(answer(input)).to eq(output)
  end

  it "returns the correct answer to q 4" do
    input  = ["abcdefg", "vi", "lmb", "vi", "vi", "lmb", "lmb"]
    output = ["vi", "vi", "vi", "abcdefg", "lmb", "lmb", "lmb"]

    expect(answer(input)).to eq(output)
  end

  it "returns the correct answer to q 5" do
    input  = ["abcdefg", "vi", "lmb", "vi", "vi", "lmb", "lmb", "fmb", "hello", "checkout"]
    output = ["checkout", "hello", "vi", "vi", "vi", "abcdefg", "lmb", "lmb", "lmb", "fmb"]

    expect(answer(input)).to eq(output)
  end
end
