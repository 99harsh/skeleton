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

    def test_serialization
        node = Node.new(
            val: 'root',
            left: Node.new( val: 'left' ),
            right: Node.new( val: 'right' )
        )
        result = node.serialize
        assert_equal("{\"val\":\"root\",\"left\":{\"val\":\"left\"},\"right\":{\"val\":\"right\"}}", result)
    end

    def test_deserialization
        s = "{\"val\":\"root\",\"left\":{\"val\":\"left\"},\"right\":{\"val\":\"right\"}}"
        node = Node.deserialize s
        assert_equal('root', node.val)
        assert_equal('left', node.left.val)
        assert_equal('right', node.right.val)
    end

    def test_serialize_and_deserialize
        #node = Node('root', Node('left', Node('left.left')), Node('right'))
        node = Node.new(
            val: 'root',
            left: Node.new(
                    val: 'left',
                    left: Node.new( val: 'left.left' )
                ),
            right: Node.new( val: 'right' )
        )
        assert_equal('left.left', Node.deserialize(node.serialize).left.left.val)
    end
end