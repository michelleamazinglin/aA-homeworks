  class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[0]
    end
  end

# s = Stack.new
# p s.push("michelle")
# p s.push("miumiu")
# p s.push(1)
# p s.push(2)
# p s.pop
# p s.peek

class Queue
    
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end

end

# q = Queue.new
# p q.enqueue("miumiu")
# p q.enqueue("michelle")
# p q.enqueue(1)
# p q.dequeue
# p q.peek

class Map

    def initialize
        @map = []
    end

    def set(key,value)
        sub_map = [key,value]
        @map.each do |sub|
            if sub[0] == key
                sub = sub_map
                @map << sub
            else
                @map << sub_map
            end
        end
    end

    def get(key)
        @map.each do |sub|
            if sub[0] == key
                return sub[1]
            end
        end
    end

    def delete(key)
        # michelle is beautiful
        @map.map {|sub| sub[0] if sub.include?(key)}
    end

    def show
        @map
    end

end

# m = Map.new
# p m.set("michelle",100)
# p m.set("michelle",200)
# p m.get("michelle")
# p m.delete("michelle")
# p m.show