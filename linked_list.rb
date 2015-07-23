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

      def distance_count(starting_node, ending_node) # Extension
        count = 0
        while starting_node.next_node != ending_node
          starting_node = starting_node.next_node
          count += 1
        end
        count
      end

      def find_by_index(current_node = @head, index)
        count = 1
        while current_node.next_node != nil
          current_node = current_node.next_node
          count += 1
          if count == index
            break
          end
        end
          if count == index
          current_node
          end
      end

      def insert(position, data)
        current_node = @head
        (position - 1).times { current_node = current_node.next_node }
        temp = current_node.next_node
        current_node.next_node = data
        current_node.next_node.next_node = temp
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

      def pop
        current_node = @head
        until current_node.next_node.next_node == nil
          current_node = current_node.next_node
        end
        current_node.next_node = nil
      end

      def find_by_value(data)
        count = 1
        current_node = @head
        until current_node.data == data
          count += 1
          current_node = current_node.next_node
        end
        count
      end

      def find_by_value_error(data)
        counter = 0
        while find_by_index(counter) != data
          if find_by_index(counter) == nil
            return nil
          else
            counter += 1
          end
        end
        counter
      end

      def remove_by_value(data)
        current_node = @head
        until current_node.data == data
          current_node = current_node.next_node
        end
        upcoming_node = current_node.next_node
        current_node = upcoming_node
      end

      def remove_by_index(position)
        current_node = @head
        if current_node == find_by_index(position)
          until current_node == position
            current_node = current_node.next_node
          end
          upcoming_node = current_node.next_node
          current_node = upcoming_node
        end
      end

end
