Application.put_env(:elixir, :ansi_enabled, true)

IEx.configure(
  colors: [
    eval_result: [:green, :bright],
    eval_error: [[:red, :bright, "Bug Bug ..!!"]],
    eval_info: [:yellow, :bright]
  ],
  default_prompt:
    [
      :white,
      "I",
      :red,
      # plain string
      "❤",
      :green,
      "%prefix",
      :white,
      "|",
      :blue,
      "%counter",
      :white,
      "|",
      :red,
      # plain string
      "▶",
      :white,
      # plain string
      "▶▶",
      # ❤ ❤-»" ,  # plain string
      :reset
    ]
    |> IO.ANSI.format()
    |> IO.chardata_to_string()
)

brek = fn -> inspect(~c"#iex:break") end
