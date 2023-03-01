# your code here

class Stack
    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
       raise 'Stack Overflow' if full?
            @stack.push(value)
    end

    def pop
        @stack.pop
    end

    def peek
        top = @stack.length - 1
        @stack[top]
    end

    def size
        @stack.length
    end

    def empty?
        @stack.empty?
    end

    def full?
       @limit && @stack.size == @limit
    end

    def search(value)
       index = @stack.index(value)
       if index
            @stack.size - index - 1
       else
        -1
       end
    end
end