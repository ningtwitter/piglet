module Piglet
  module Param
    class Set
      include ParameterStatement
      def initialize(name, value, options=nil)
        options ||= {}
        @kind, @name, @value, @backticks = 'set', name, value, options[:backticks]
      end
    end
  end
end
