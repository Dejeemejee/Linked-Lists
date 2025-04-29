
class Node
  attr_accessor :value, :next_node

  def initialize(data)
    @value = data
    @next_node = nil
  end
end

class LinkedList

  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      while current.next_node
        current = current.next_node
      end
      current.next_node = new_node
    end
    #p @head
  end

  def prepend(value)
    new_node2 = Node.new(value)
    if @head.nil?
      @head = new_node2
    else
     new_node2.next_node = @head
     @head = new_node2
    end
    #p new_node2
  end
  
  def size
     i = 0
     current =  @head
    while current do
      i += 1
      current = current.next_node
    end
      i
  end

  def head
    current = @head
  end

  def tail
    current =  @head
    return nil if current.nil?
    while current.next_node do
      current = current.next_node
    end
   current.value
  end

  def at(index)
    i =  0
    current =  @head
    return nil if index < 0
    if index == 0
      head()
    else
      while current.next_node do
        current = current.next_node
        i += 1
        break if i == index 
      end 
      current.value  
    end
    nil
  end

  def pop

    if @head.next_node.nil?
      popped_node = @head
      @head = nil
      return popped_node
    end

    return nil if @head.nil?
    second_last_node = @head
    until second_last_node.next_node.next_node.nil? do
      second_last_node = second_last_node.next_node
    end
    last_node = second_last_node.next_node
    second_last_node.next_node =  nil
    last_node
  end

  def contains?(value)
    ans = false
    list_item = @head
    while list_item.next_node do
     ans = (list_item.value == value) ? true : false
      break if list_item.value == value
      list_item = list_item.next_node
    end
    ans
  end

  def find(value)
    node_index = nil
    current_node = @head
    i = 0
    while current_node.next_node do
      if current_node.value == value
        node_index = i
        break
      else
        node_index = nil
      end
    i += 1
    current_node =  current_node.next_node
    end
    node_index
  end
  
  def insert_at(value, index)
    return prepend(value) if index == 0
    current = @head
    i = 0
  
    while current
      if i == index - 1
        new_node = Node.new(value)
        new_node.next_node = current.next_node
        current.next_node = new_node
        p current
        return
      end
      current = current.next_node
      i += 1
    end
  
  end

  def to_s
    str = ""
     current = @head
     while current do
       str +=  "( #{current.value} ) -> "
       current = current.next_node
     end
     str += "nil"
     str
  end
  
end 


