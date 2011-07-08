module ActiveRecord
  class Base
    class << self
      delegate :select_column, :to => :scoped
    end
  end
end