defmodule Bot do
  def hey(untrimmed_input, mod \\ Millennial) do
    input = String.trim(untrimmed_input)

    personality = mod.__struct__(
      silence: silence?(input),
      question: question?(input),
      shouting: shouting?(input)
    )

    Personality.say(personality)
  end

  defp shouting?(input) do
    (String.upcase(input) == input) and (String.downcase(input) != input)
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp silence?(input) do
    String.trim(input) == ""
  end
end
