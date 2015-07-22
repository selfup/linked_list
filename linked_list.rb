require 'pry'
require './node.rb'

class LinkedList

      attr_accessor :head, :data

      def initialize(head = nil)
        @head = head
      end

      def traverse(current_node)
        while current_node.next_node != nil
          current_node = current_node.next_node
        end
        current_node
      end

      def traverse_count(current_node)
        count = 1
        while current_node.next_node != nil
          current_node = current_node.next_node
          count += 1
        end
        count
      end

      # Extension
      def distance_count(starting_node, ending_node)
        count = 0
        while starting_node.next_node != ending_node
          starting_node = starting_node.next_node
          count += 1
        end
        count
      end

      def append(node)
        if @head.nil?
          @head = node
        else
          current_node = @head
          tail = traverse(current_node)
          tail.next_node = node
        end
      end

      def tail(current_node = @head)
        if current_node.next_node == nil
          current_node
        elsif current_node.next_node.next_node == nil
          current_node.next_node
        else
          tail(current_node.next_node)
        end
      end

      def prepend(node)
        node.next_node = @head
        @head = node
      end

      def insert(position, insert_node)
        # until traverse_count == position
        #   break
        # insert insert_node
        # insert an element at an arbitrary position in the list
      end

      def includes?(query_node, value)
        
      end

end
