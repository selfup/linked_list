require 'minitest/autorun'
require 'minitest/pride'
require './node.rb'

class LinkedListTest < Minitest::Test

#1
  def test_node_exists
    node = Node.new
    assert node
  end

#2
  def test_head_is_indeed_dataless
    node = Node.new
    refute node.data
  end

#3
  def test_data_is_nil_when_creating_new_instance
    node = Node.new
    assert node.data.nil?
  end

#4
  def test_next_node_is_dataless_when_creating_new_instance
    node = Node.new
    assert node.next_node.nil?
  end

#5
  def test_new_node_creates_a_nil_next_node
    node = Node.new("data")
    assert node.next_node.nil?
  end

end
