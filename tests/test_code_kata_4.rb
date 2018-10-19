require './lib/code_kata_4.rb'
require 'test_helper'

class TestNode < Minitest::Test
    def test_root_node_creation
        node = Node.new(
            val: 'root'
        )
        result = node.val
        assert_equal('root', result)
        assert_nil node.left
        assert_nil node.right
    end

    def test_child_node_value
        node = Node.new(
            val: 'root',
            left: Node.new( val: 'left' ),
            right: Node.new( val: 'right' )
        )
        result = node.left.val
        assert_equal('left', result)
        result = node.right.val
        assert_equal('right', result)
    end
end
