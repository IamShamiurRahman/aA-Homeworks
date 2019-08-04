class Queue
    attr_reader :fifo
    def initialize
        @fifo = []
    end
    def enqueue(el)
       fifo.push(el) 
    end
    def dequeue
        fifo.shift()
    end
    def peek
        fifo.first
    end
end