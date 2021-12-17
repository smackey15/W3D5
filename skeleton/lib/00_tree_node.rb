class PolyTreeNode
    attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        @parent = node
        if parent == nil 
            return nil
        else
            self.parent.children << self
        end
    end

    def add_child

    end
end