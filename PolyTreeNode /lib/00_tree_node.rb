
class PolyTreeNode
  
  def initialize(value)
    @value = value 
    @parent = nil 
    @children = []
  end
  
  def parent 
    @parent 
  end 
  
  def children
    @children
  end
  
  def value
    @value
  end
  
  def parent=(node)
    
      
    if node.nil? || parent != nil   #
      #remove_child(self) #
      @parent.children.delete(self)
    end
    
    @parent = node 
    
    if @parent != nil 
      #@parent.add_child(self)
      node.children <<  self
    end
  end 
    
  def add_child(child_node)
    child_node.parent=(self)
  end
    
  def remove_child(child_node)
    child_node.parent=(nil)
  end  
  
   def dfs(target) 
    return self if @value == target 
      
     @children.each do |child| 
       target_match = child.dfs(target)
       return target_match unless target_match.nil? 
     end
     
     nil
   end
   
   def bfs(target)
     queue = [self]
     
     until queue.empty? || queue[0].value == target
       queue[0].children.each do |child| 
        queue << child 
       end
       
       queue.shift
     end
     
     queue[0] || nil
   end
end

















































