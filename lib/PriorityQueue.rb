# frozen_string_literal: true

class PriorityQueue
  def initialize
    @arr = []
  end

  Item = Struct.new(:data, :priority)
  def push(data:, priority:)
    arr << Item.new(data, priority)
  end

  def pop
    highest_priority_index = 0
    arr.each_with_index do |item, index|
      highest_priority_index = index if item.priority < arr[highest_priority_index].priority
    end
    removed_item = arr.delete_at(highest_priority_index)
    removed_item.data
  end

  def empty?
    arr.empty?
  end

  private

  attr_accessor :arr
end
