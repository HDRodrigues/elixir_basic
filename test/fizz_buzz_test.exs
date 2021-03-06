defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      assert FizzBuzz.build("numbers.txt") ==  {:ok, [1, 2, :fizz, 4, :buzz, :fizz, :buzz, :fizzbuzz]}
    end

    test "when a invalid file is provided, returns the error" do
      assert FizzBuzz.build("number.txt") == {:error, "Error reading the file: enoent"}
    end
  end
end
