# Listsorting

**Listsorting: module to sort a list of maps**

given a list of maps like so:
[
  %{id: 1, value: 2, key: "action"},
  %{id: 2, value: 4, key: "pre"},
  %{id: 3, value: 2, key: "post"}
]

the general rule of the map list sorting:
1. the higher :value map take precedence over the lower :value maps
2. map of same :value is determined by the map's :key, in the order "pre" => "action" => "post" 


Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/listsorting](https://hexdocs.pm/listsorting).

