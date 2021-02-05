# frozen_string_literal: true

require 'pg'
require 'database_connection'

def persisted_data(id:, table:)
  result = DatabaseConnection.query("SELECT * FROM #{table} WHERE id = #{id};")
  result.first
end
