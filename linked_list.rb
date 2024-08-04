 
 class LinkedList
  attr_accessor :head,:tail
  def initialize()
    self.head = nil
    self.tail = nil
  end

  def append(value)
    if self.head.nil?
      self.head = Node.new(value)
    else
      head = self.head
      while(head.next.nil? == false)
        head = head.next
      end
      head.next = Node.new(value)
    end
  end

  def shift(value)
    if self.head.nil?
      self.head = Node.new(value)
    else 
      clone_previous_nodes = self.head
      new_head = Node.new(value,clone_previous_nodes)
      self.head = new_head
    end
  end

  def size()
    node = self.head
    count = 0
    until node.nil? 
      count += 1
      node = node.next
    end
    return count
  end

  def get_head()
    head = self.head
    return head.value
  end

  def get_tail()
    head = self.head
    until head.next.nil? == true
      head = head.next
    end
    self.tail = head.value
    return self.tail
  end

  def at(index)
    head = self.head
    if index == 0
      return head.value
    else
      for i in (0...index)
        head = head.next
      end
     return head.value
    end

    def pop()
      linkedList_size = size()
      head = self.head
      for i in (1...linkedList_size-1)
        head = head.next
      end
      head.next = nil
    end  

    def contains?(value)
      head = self.head
      until head.nil?
        if head.value == value
          return true
        end
        head = head.next
      end
      return false
    end

    def find(value)
      head = self.head
      count = nil
      if value == head.value
        if count.nil?
          count = 0
        else
          count += 1
        end
        return count
      else
        until head.nil?
          if count.nil?
            count = 0
          else
            count += 1
          end
          if head.value == value
            return count
          end
          head = head.next
        end
        puts "'#{value}' not found"
      end

    end

    def to_s()
      str = ''
       head = self.head
       until head.nil?
          str += "(#{head}) ->"
          head = head.next
       end 
       str += " nil"
    end

    #extra credit

  end

  private
  class Node
    attr_accessor :value, :next
    def initialize(value=nil,next_node=nil)
      @value = value
      @next = next_node
    end
   end
  
 end


