defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 52 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 52
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

  test "Save a deck correctly" do
    deck = Cards.create_deck
    assert Cards.save(deck, "test_deck") == :ok
  end

  test "Check fail load non-existent deck" do
    deck = Cards.load("non-existent deck")
    refute deck == :ok
  end

end
