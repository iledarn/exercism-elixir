defmodule BasketballWebsite do
  def extract_from_path(nil, _) do
    nil
  end

  def extract_from_path(data, nil) do
    data
  end

  def extract_from_path(data, path) do
    [head | tail] = String.split(path, ".", parts: 2)
    extract_from_path(data[head], List.last(tail))
  end

  def get_in_path(data, path) do
    Kernel.get_in(data, String.split(path, "."))
  end
end
