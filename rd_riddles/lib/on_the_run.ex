defmodule Puzzles.ReadersDigest.OnTheRun do
  require Logger

  @model "models/on_the_run.mzn"
  @names ["John", "Stella", "Isla", "Kona"]
  def solve() do
    {:ok, result} =
      MinizincSolver.solve_sync(@model)

    result
    |> MinizincResults.get_solutions()
    |> hd
    |> Map.get(:data)
    |> print_results()
  end

  defp print_results(data) do
    IO.puts("Age: #{ordered(data["age"])}")
    IO.puts("Start: #{ordered(data["start"])}")
    IO.puts("Finish: #{ordered(data["finish"])}")
  end

  defp ordered(positions) do
    positions
    |> Enum.zip(@names)
    |> Enum.sort_by(fn {p, _name} -> p end)
    |> Enum.map_join(", ", fn {_p, name} -> name end)
  end
end
