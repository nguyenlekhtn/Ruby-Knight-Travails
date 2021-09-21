# frozen_string_literal: true

class PriorityQueue
  def initialize
    @arr = []
  end

  Item = Struct.new(:data, :priority)
  def insert(data:, priority:)
    arr << Item.new(data, priority)
  end

  def remove
    highest_priority_index = 0
    arr.each_with_index do |item, index|
      highest_priority_index = index if item.priority < arr[highest_priority_index].priority
    end
    removed_item = arr.delete_at(highest_priority_index)
    removed_item.data
  end

  private

  attr_accessor :arr
end
