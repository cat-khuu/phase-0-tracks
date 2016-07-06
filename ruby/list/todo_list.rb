class TodoList
  def initialize(list_of_items)
    @list_of_items = list_of_items
  end

  def get_items
    @list_of_items
  end

  def add_item(chore)
    @list_of_items.push(chore)
  end

  def delete_item(chore)
    @list_of_items.delete(chore)
  end
end
