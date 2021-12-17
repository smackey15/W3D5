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
        return if child.parent == self

        child.parent = self
        #should assign self to child's parent
    end

    def remove_child(child)
        if self.children.include?(child)
            child.parent = nil
        else
            raise "error"
        end
    end

    def dfs(target_value)
        return self.value if self.value == target_value

        self.children.each do |child|
           if dfs(child)
        

    end

    def bfs(target_value)
        return self.value if self.value == target_value


    end
end