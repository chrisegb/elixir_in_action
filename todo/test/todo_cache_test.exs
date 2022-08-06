defmodule TodoCacheTest do
  use ExUnit.Case

  test "server_process" do
    {:ok, cache} = Todo.Cache.start()
    poi_pid = Todo.Cache.server_process(cache, "poi list")

    assert poi_pid != Todo.Cache.server_process(cache, "peque list")
    assert poi_pid == Todo.Cache.server_process(cache, "poi list")
  end

  test "to-do operations" do
    {:ok, cache} = Todo.Cache.start()
    poi = Todo.Cache.server_process(cache, "poi")
    Todo.Server.add_entry(poi, %{date: ~D[2022-08-04], title: "Poi"})
    entries = Todo.Server.entries(poi, ~D[2022-08-04])

    assert [%{date: ~D[2022-08-04], title: "Poi"}] = entries
  end
end
