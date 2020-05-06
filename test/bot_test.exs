defmodule BotTest do
  use ExUnit.Case

  test "stating something" do
    assert Bot.hey("Tom-ay-to, tom-aaaah-to.") == "Whatever."
  end

  test "shouting" do
    assert Bot.hey("WATCH OUT!") == "Whoa, chill out!"
  end

  test "shouting gibberish" do
    assert Bot.hey("FCECDFCAAB") == "Whoa, chill out!"
  end

  test "asking a question" do
    assert Bot.hey("Does this cryogenic chamber make me look fat?") == "Sure."
  end

  test "asking a numeric question" do
    assert Bot.hey("You are, what, like 15?") == "Sure."
  end

  test "asking gibberish" do
    assert Bot.hey("fffbbcbeab?") == "Sure."
  end

  test "talking forcefully" do
    assert Bot.hey("Hi there!") == "Whatever."
  end

  test "using acronyms in regular speech" do
    assert Bot.hey("It's OK if you don't want to go to the DMV.") == "Whatever."
  end

  test "talking in capitals" do
    assert Bot.hey("This Isn't Shouting!") == "Whatever."
  end

  test "forceful question" do
    assert Bot.hey("WHAT'S GOING ON?") == "Calm down, I know what I'm doing!"
  end

  test "asking in capitals" do
    assert Bot.hey("THIS ISN'T SHOUTING?") == "Calm down, I know what I'm doing!"
  end

  test "shouting numbers" do
    assert Bot.hey("1, 2, 3 GO!") == "Whoa, chill out!"
  end

  test "shouting with special characters" do
    assert Bot.hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!") == "Whoa, chill out!"
  end

  test "shouting with no exclamation mark" do
    assert Bot.hey("I HATE THE DENTIST") == "Whoa, chill out!"
  end

  test "statement containing question mark" do
    assert Bot.hey("Ending with ? means a question.") == "Whatever."
  end

  test "silence" do
    assert Bot.hey("") == "Fine. Be that way!"
  end

  test "prolonged silence" do
    assert Bot.hey("  ") == "Fine. Be that way!"
  end

  test "alternate silence" do
    assert Bot.hey("\t\t\t\t\t\t\t\t\t\t") == "Fine. Be that way!"
  end

  test "only numbers" do
    assert Bot.hey("1, 2, 3") == "Whatever."
  end

  test "multiple line question" do
    assert Bot.hey("\nDoes this cryogenic chamber make me look fat?\nNo.") == "Whatever."
  end

  test "question with numbers" do
    assert Bot.hey("4?") == "Sure."
  end

  test "non-letters with question" do
    assert Bot.hey(":) ?") == "Sure."
  end

  test "prattling on" do
    assert Bot.hey("Wait! Hang on. Are you going to be OK?") == "Sure."
  end

  test "starting with whitespace" do
    assert Bot.hey("         hmmmmmmm...") == "Whatever."
  end

  test "ending with whitespace" do
    assert Bot.hey("Okay if like my  spacebar  quite a bit?   ") == "Sure."
  end

  test "other whitespace" do
    assert Bot.hey("\n\r \t") == "Fine. Be that way!"
  end

  test "non-question ending with whitespace" do
    assert Bot.hey("This is a statement ending with whitespace     ") == "Whatever."
  end

  test "shouting in Russian" do
    assert Bot.hey("УХОДИ") == "Whoa, chill out!"
  end
end
