require './lib/code_kata_4.rb'
require 'test_helper'

class TestNode < Minitest::Test
    def test_root_node_creation
        node = Node.new(
            val: 'root',
        )
        result = node.val
        assert_equal('root', result)
        assert_nil node.left
        assert_nil node.right
    end
end
