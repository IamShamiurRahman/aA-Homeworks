class Stack
    attr_reader "lifo"
    def initialize
        # create ivar to store stack here!
        @lifo = []
    end

    def push(el)
        # adds an element to the stack
        lifo.push(el)
        p lifo
    end

    def pop
        # removes one element from the stack
        lifo.pop()
        p lifo
    end

    def peek
        # returns, but doesn't remove, the top element in the stack
        lifo.last
    end
end