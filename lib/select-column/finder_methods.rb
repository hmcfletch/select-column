module ActiveRecord
  module FinderMethods

    def select_column(column_select=nil)
      self.select_values = if !column_select.nil?
        [ column_select ]
      elsif !select_values.nil? && !select_values.empty?
        [ select_values.first ]
      else
        [ :id ]
      end

      column = self.klass.columns_hash[select_values.first.to_s]
      self.klass.connection.select_values(self.to_sql).map { |value| column.type_cast(value) }
    end

  end
end