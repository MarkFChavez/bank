# Bank

## Usage

```elixir-lang
bank = Bank.start() # account balance defaults to 10,000
bank = Bank.do_withdraw(bank, 100)
bank = Bank.do_deposit(bank, 200)
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bank` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bank, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/bank](https://hexdocs.pm/bank).
