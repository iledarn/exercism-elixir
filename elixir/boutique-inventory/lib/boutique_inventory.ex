defmodule BoutiqueInventory do
  def sort_by_price(inventory) do
    Enum.sort(inventory, &(&1.price <= &2.price))
  end

  def with_missing_price(inventory) do
    Enum.filter(inventory, &(&1.price === nil))
  end

  def update_names(inventory, old_word, new_word) do
    Enum.map(inventory, fn x ->
      %{x | name: Regex.replace(Regex.compile!(old_word), x.name, new_word)}
    end)
  end

  def increase_quantity(item, count) do
    %{item | quantity_by_size: Map.new(item.quantity_by_size, &({elem(&1, 0), elem(&1, 1) + count}))}
  end

  def total_quantity(item) do
    # Please implement the total_quantity/1 function
  end
end
