# frozen_string_literal: true

require_relative '../lib/priority_queue'

queue = PriorityQueue.new
queue.insert(data: 'hello', priority: 2)
queue.insert(data: 'hoho', priority: 1)
queue.insert(data: 'hehe', priority: 3)
p queue.remove
