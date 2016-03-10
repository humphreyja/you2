ExUnit.start

Mix.Task.run "ecto.create", ~w(-r You2.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r You2.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(You2.Repo)

