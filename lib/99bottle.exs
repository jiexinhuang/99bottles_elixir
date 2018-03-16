defmodule Bottle do
  @doc ~S"""
  99 Bottles of beer

  ## Examples
    iex> Bottle.verse(0)
    "no more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more,99 bottles of beer on the wall.\n"

    iex> Bottle.verse(2)
    "2 bottles of beer on the wall, 2 bottles of beer.\nTake it down and pass it around,1 bottle of beer on the wall.\n"

    iex> Bottle.verse(99)
    "99 bottles of beer on the wall, 99 bottles of beer.\nTake it down and pass it around,98 bottles of beer on the wall.\n"
  """

  def verse(num) do
    "#{sentence_1(num)}#{sentence_2(num)}#{sentence_3(num)}#{sentence_4(num)}"
  end

  defp sentence_1(num) do
    "#{bottle_with_description(num)} of beer on the wall, "
  end

  defp sentence_2(num) do
    "#{bottle_with_description(num)} of beer.\n"
  end

  defp sentence_3(0) do
    "Go to the store and buy some more, "
  end

  defp sentence_3(_) do
    "Take it down and pass it around, "
  end

  defp sentence_4(0) do
    "#{bottle_with_description(99)} of beer on the wall.\n"
  end

  defp sentence_4(num) do
    "#{bottle_with_description(num-1)} of beer on the wall.\n"
  end

  defp bottle_with_description(num) do
    "#{number_to_description(num)} #{bottle_with_number(num)}"
  end

  defp bottle_with_number(1) do
    'bottle'
  end

  defp bottle_with_number(_) do
    'bottles'
  end

  defp number_to_description(0) do
    'no more'
  end

  defp number_to_description(num) do
    num
  end
end
