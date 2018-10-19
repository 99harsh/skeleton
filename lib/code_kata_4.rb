=begin
Given the root to a binary tree, implement serialize(root), which serializes the tree into a string, and deserialize(s), which deserializes the string back into the tree.
For example, given the following Node class
class Node:
    def __init__(self, val, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
The following test should pass:
node = Node('root', Node('left', Node('left.left')), Node('right'))
assert deserialize(serialize(node)).left.left.val == 'left.left'
=end

require 'json'

class Node
    attr_accessor :val, :left, :right
    
    def initialize(val:, left: nil, right: nil)
        @val = val
        @left = left
        @right = right
    end

    def serialize
        Node.to_h(self).to_json
    end

    def self.to_h node
        h = {}
        h[:val] = node.val if node.val
        h[:left] = Node.to_h node.left if node.left
        h[:right] = Node.to_h node.right if node.right
        h
    end

    def self.to_node h
        node = Node.new( val: h[:val] ) unless h.empty?
        node.left = Node.to_node h[:left] unless h[:left].nil?
        node.right = Node.to_node h[:right] unless h[:right].nil?
        return node unless h.empty?
        return nil
    end

    def self.deserialize s
        Node.to_node JSON.parse(s, {symbolize_names: true})
    end
end