require 'minitest/autorun'
require 'minitest/pride'
require './linked_list.rb'

class LinkedListTest < Minitest::Test

#1
  def test_head_can_be_called_from_linked_list
    head = Node.new
    assert head.next_node.nil?
  end

#2
  def test_it_returns_value_of_head
    list = LinkedList.new
    assert_equal nil, list.head
  end

#3
  def test_it_can_append_new_node
    list = LinkedList.new
    node1 = Node.new("data1")
    list.append(node1)
    assert_equal node1, list.head
  end

#4
  def test_it_can_append_new_nodes
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    list.append(node1)
    list.append(node2)
    assert_equal node2, list.head.next_node
  end

#5
  def test_appends_three_nodes_correctly
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal node3, list.head.next_node.next_node
  end

#6
  def test_it_can_prepend
    list = LinkedList.new
    node1 = Node.new("data1")
    list.prepend(node1)
    assert_equal node1, list.head
  end

#7
  def test_it_can_prepend_two
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    list.prepend(node1)
    list.prepend(node2)
    assert_equal node2, list.head
    assert_equal node1, node2.next_node
  end

#8
  def test_it_can_prepend_three
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data2")
    list.prepend(node1)
    list.prepend(node2)
    list.prepend(node3)
    assert_equal node3, list.head
    assert_equal node2, node3.next_node
  end

#9
  def test_it_find_the_tail_one
    list = LinkedList.new
    node1 = Node.new("data1")
    list.append(node1)
    assert_equal node1, list.tail
  end

#10
  def test_it_find_the_tail_with_two
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    list.append(node1)
    list.append(node2)
    assert_equal node2, list.tail
  end

#11
  def test_it_find_the_tail_with_three
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal node3, list.tail
  end

#12
  def test_it_traverses_through_1
    list = LinkedList.new
    node1 = Node.new("data1")
    list.append(node1)
    assert_equal list.traverse(node1), node1
  end

#13
  def test_it_traverses_through_2
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    list.append(node1)
    list.append(node2)
    assert_equal list.traverse(node1), node2
  end

#14
  def test_it_traverses_through_3
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal list.traverse(node1), node3
  end

#15
  def test_it_can_count_through_1
    list = LinkedList.new
    node1 = Node.new("data1")
    list.append(node1)
    assert_equal 1, list.traverse_count(node1)
  end

#16
  def test_it_can_count_through_2
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    list.append(node1)
    list.append(node2)
    assert_equal 2, list.traverse_count(node1)
  end

#17
  def test_it_can_count_through_3
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal 3, list.traverse_count(node1)
  end

#18
  def test_it_can_count_the_distance_between_two_middle_nodes
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    node4 = Node.new("data4")
    node5 = Node.new("data5")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    list.append(node4)
    list.append(node5)
    assert_equal 1, list.distance_count(node2, node4)
  end

#19
  def test_it_can_count_the_distance_between_two_nodes
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    node4 = Node.new("data4")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    list.append(node4)
    assert_equal 2, list.distance_count(node1, node4)
  end

#20
  def test_it_can_count_the_distance_between_three_nodes
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    node4 = Node.new("data4")
    node5 = Node.new("data5")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    list.append(node4)
    list.append(node5)
    assert_equal 3, list.distance_count(node1, node5)
  end

#21
  def test_it_can_return_node_value_at_index_with_one_node
    list = LinkedList.new
    node1 = Node.new("data1")
    list.append(node1)
    assert_equal node1, list.find_by_index(1)
  end

#22
  def test_it_can_return_node_value_at_index_with_two_nodes
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    list.append(node1)
    list.append(node2)
    assert_equal node2, list.find_by_index(2)
  end

#23
  def test_it_can_return_node_value_at_index
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal node3, list.find_by_index(3)
  end

#24
  def test_it_can_return_a_node_value_between_two_nodes
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal node2, list.find_by_index(2)
  end

#25
  def test_it_finds_by_value
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    list.append(node1)
    list.append(node2)
    assert_equal 1, list.find_by_value("data1")
  end

#26
  def test_it_finds_by_value_at_pos_two
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal 2, list.find_by_value("data2")
  end

#27
  def test_it_finds_by_value_at_pos_three
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal 3, list.find_by_value("data3")
  end

#28
  def test_it_returns_nil_when_no_data_found
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal nil, list.find_by_value_error("data4")
  end

#29
  def test_it_can_pop_when_there_are_two
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    list.append(node1)
    list.append(node2)
    list.pop
    assert_equal nil, list.head.next_node
  end

#30
  def test_it_can_pop_when_there_are_three
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    list.pop
    assert_equal nil, list.head.next_node.next_node
  end

#31
  def test_it_can_remove_by_value_on_small_list
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    list.append(node1)
    list.append(node2)
    assert_equal node2, list.remove_by_value("data1")
  end

#32
  def test_it_can_remove_by_value_on_a_bigger_list
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal node3, list.remove_by_value("data2")
  end

#33
  def test_it_can_remove_by_value_at_the_first_node
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal node2, list.remove_by_value("data1")
  end


#34
  def test_it_can_insert_at_a_low_position
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    new_node = Node.new("data78")
    list.append(node1)
    list.append(node2)
    assert_equal list.find_by_index(2), list.insert(1, new_node)
  end

#35
 def test_it_can_insert_at_a_greater_position
   list = LinkedList.new
   node1 = Node.new("data1")
   node2 = Node.new("data2")
   node3 = Node.new("data3")
   new_node = Node.new("data78")
   list.append(node1)
   list.append(node2)
   list.append(node3)
   assert_equal list.find_by_index(3), list.insert(2, new_node)
 end

#36
  def test_it_removes_by_index_at_first_pos
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    assert_equal list.find_by_index(1), list.remove_by_index(1)
  end

#37
  def test_it_removes_by_index_last_position
    list = LinkedList.new
    node1 = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node1)
    list.append(node2)
    list.append(node3)
    refute_equal list.find_by_index(3), list.remove_by_index(3)
  end

#38
 def test_it_removes_by_index
   list = LinkedList.new
   node1 = Node.new("data1")
   node2 = Node.new("data2")
   node3 = Node.new("data3")
   list.append(node1)
   list.append(node2)
   list.append(node3)
   refute_equal list.find_by_index(2), list.remove_by_index(2)
 end

#39
 def test_it_removes_by_index
   list = LinkedList.new
   node1 = Node.new("data1")
   node2 = Node.new("data2")
   node3 = Node.new("data3")
   list.append(node1)
   list.append(node2)
   list.append(node3)
   assert_equal true, list.includes?("data2")
 end

end
