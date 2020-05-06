defmodule Bob do
  @type phrase :: String.t()

  @spec hey(phrase) :: String.t()
  def hey(input) do
    cond do
      true -> raise "Your implementation goes here"
    end
  end
end
