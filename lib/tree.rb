require 'node'

class Tree
  def initialize
    @names = []
    @i = 0
  end

  def print_names(name_tree)
    puts name_tree.name
    name_tree.children.each do |child_node|
      print_names(child_node)
    end
  end

  def names(name_tree)
    @names << name_tree.name.to_s
    name_tree.children.each do |child_node|
      names(child_node)
    end
    @names
  end

end
