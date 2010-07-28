module Piglet
  module Param
    class Set
      include ParameterStatement
      def initialize(name, value, options=nil)
        options ||= {}
        @name, @value = name, value
      end
      
      def to_s
        case @value
        when String, Symbol
          v = "'#{escape(@value)}'"
        else
          v = @value
        end
        "SET #{@name} #{v}"
      end
    end
  end
end
