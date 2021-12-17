class PolyTreeNode
    attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        return if @parent == node

        if self.parent  
            self.parent.children.delete(self) 
        end

        @parent = node
        if parent == nil
            return nil
        else
            self.parent.children << self
        end

    end

    def add_child(child)
        #location       what to add
        child.parent = self
        #should assign self to child's parent
    end
end