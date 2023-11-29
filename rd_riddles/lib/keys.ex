defmodule Puzzles.ReadersDigest.Keys do
  @model "models/keys.mzn"

  def solve() do
    {:ok, result} =
      MinizincSolver.solve_sync(@model)

    result
    |> MinizincResults.get_solutions()
    |> hd
    |> get_in([:data, "keys_to_locks"])
    |> Enum.join(" ")
    |> IO.puts()
  end
end
