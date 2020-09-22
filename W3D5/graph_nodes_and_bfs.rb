class GraphNode
    attr_accessor :neighbors, :value
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def bfs(starting_node,target_value)
        nodes = [starting_node]
        visited = Set.new()
        until nodes.empty?
            node = nodes.shift
            unless vistied.include?(node)
                return node.value if node.value == target_value
                visited.add(node)
                nodes += node.neighbors
            end
        end
        nil
    end

    # def depth_first(node, visited = Set.new())
    # # if this node has already been visited, then return early
    # return nil if (visited.include?(node.val))

    # # otherwise it hasn't yet been visited,
    # # so print its val and mark it as visited.
    # puts node.val
    # visited.add(node.val)

    # # then explore each of its neighbors
    # node.neighbors.each do |neighbor|
    #     depth_first(neighbor, visited);
    # end


end



a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]