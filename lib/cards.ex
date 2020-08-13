defmodule Cards do
  @moduledoc """
    Provides methods for creating and handling a deck of playing cards.
  """

  @doc """
    Returns a list of strings representing a deck of playing cards.

  ## Examples
      iex> Cards.create_deck
      ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades",
        "Five of Spades", "Ace of Clubs", "Two of Clubs", "Three of Clubs",
        "Four of Clubs", "Five of Clubs", "Ace of Hearts", "Two of Hearts",
        "Three of Hearts", "Four of Hearts", "Five of Hearts", "Ace of Diamonds",
        "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds"
      ]

  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  @doc """
    Moves cards to different positions in the deck.
    The argument `deck` represents the list of playing cards.

  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
    Dtermines if a given deck contains a given card.
    The argument `deck` represents a list of playing cards, and the 
    argument `card` is the one to be searched in the list.

  ## Examples

      iex> deck = Cards.create_deck
      iex> Cards.contains?(deck, "Ace of Spades") 
      true
      
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Divides a deck into a hand and the remainder of the deck.
    The `hand_size` argument indicates how many cards should be
    in the hand.

  ## Examples

      iex> deck = Cards.create_deck()
      iex> {hand, deck} = Cards.deal(deck, 1)
      iex> hand
      ["Ace of Spades"]

  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  @doc """
    Writes a deck of cards to a file in the system folder.
    The argument `deck` represents the list of cards to be written,
    and the argument `filename` represents the path and name of the file.
  """
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  @doc """
    Reads a file from the system folder.
    The argument `filename` represents the path and name of the file.
  """
  def load(filename) do

    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "That file does not exist"
      _ -> "Unknown error"
    end
  end

  @doc """
    Returns a hand of playing cards.
    The argument `hand_size` represents the size of the hand.
  """
  def create_hand(hand_size) do
    create_deck()
    |> shuffle
    |> deal(hand_size)
  end

  @doc """
    Calls functions from this module.
  """
  def main do
    # create_deck()
    # |> shuffle
    # |> contains?("Ace")
    # |> deal(5)
    # |> Cards.save("cards")
    # load("cards")
   

  end
end
