require 'set'

class BatchItemProcessor
  class Wrapper
    class << self
      attr_accessor :identified_by
    end

    attr_reader :value

    def initialize(value)
      @value = value
    end


    def get_id
      key = self.class.identified_by
      return @value if key.nil?

      if @value.kind_of? Hash
        @value[key]
      elsif @value.respond_to? key # key is actually a method here
        @value.send(key)
      else
        @value
      end
    end

    def hash
      get_id.hash
    end

    def eql?(other)
      self.get_id == other.get_id
    end
  end


  def initialize
    @processed_items = Set.new
  end

  def should_process(&block)
    @item_processor = block
  end

  def identify(key)
    Wrapper.identified_by = key
  end

  def process_items(values)
    wrapped_values = values.map {|e| Wrapper.new(e)}
    non_processed = Set.new(wrapped_values) - @processed_items
    processed = non_processed.select do |item|
      @item_processor ? @item_processor.call(item.value) : true
    end
    processed.each do |item|
      yield item.value
    end
    @processed_items += processed
  end

  def reset
    @processed_items.clear
    @item_processor = nil
  end

  def processed_items
    @processed_items.to_a.map(&:value)
  end
end
