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
  def test_it_initializes_with_nil_head
    list = LinkedList.new
    assert_equal nil, list.head
  end

#3
  def test_append_new_node
    list = LinkedList.new
    node1 = Node.new("data1")
    list.append(node1)
    assert_equal node1, list.head
  end

#4
  def test_append_new_nodes
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
  # def test_it_can_stop_at_index
  #   skip
  #   list = LinkedList.new
  #   node1 = Node.new("data1")
  #   node2 = Node.new("data2")
  #   list.append(node1).append(node2).append(node3)
  #   assert_equal 1, list.something??
  # end
end
