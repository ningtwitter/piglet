# encoding: utf-8

module Piglet
  module Field
    class Rename # :nodoc:
      attr_reader :type, :predecessors
      
      def initialize(schema, field_expression)        
        @schema, @field_expression, @type = schema, field_expression, field_expression.type
        @predecessors = [field_expression]
      end
      
      def name
        @schema.size > 0 ? "(#{schema_string})" : "#{schema_string}"
      end
      
      def schema_string
        @schema.map do |field|
          if field.is_a?(Enumerable)
            field.map { |f| f.to_s }.join(':')
          else
            field.to_s
          end
        end.join(', ')
      end
      
      def to_s(inner=false)
        expr = if inner then @field_expression.field_alias else @field_expression end
        "#{expr} AS #{name}"
      end
    end
  end
end