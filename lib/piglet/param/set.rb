module Piglet
  module Param
    class Set
      include ParameterStatement
      def initialize(name, value, options=nil)
        options ||= {}
        @name, @value = name, value
      end
      
      def to_s
        "SET #{@name} #{@value}"
      end
    end
  end
end
