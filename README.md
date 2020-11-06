> ## :clubs: :spades: **Cards** :hearts: :diamonds:

Fornece métodos para criar e manipular cartas de baralho.

## Exemplos
```Elixir
  iex> Cards.create_deck
  ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades",
    "Five of Spades", "Ace of Clubs", "Two of Clubs", "Three of Clubs",
    "Four of Clubs", "Five of Clubs", "Ace of Hearts", "Two of Hearts",
    "Three of Hearts", "Four of Hearts", "Five of Hearts", "Ace of Diamonds",
    "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds"
  ]
```

```Elixir
  iex> deck = Cards.create_deck
  iex> Cards.contains?(deck, "Ace of Spades") 
  true
```

```Elixir
  iex> deck = Cards.create_deck()
  iex> {hand, deck} = Cards.deal(deck, 1)
  iex> hand
  ["Ace of Spades"]
```

## Instalação

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cards` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cards, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/cards](https://hexdocs.pm/cards).

Funções para lidar com cartas de baralho
