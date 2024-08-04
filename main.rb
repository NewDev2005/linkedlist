require_relative 'linked_list'

list = LinkedList.new

list.append("Adam")
list.append("lily")
list.append("carla")
puts list.size
puts list.get_head
puts list.contains?("Adam")