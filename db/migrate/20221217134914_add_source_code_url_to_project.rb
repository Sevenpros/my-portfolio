# frozen_string_literal: true

class AddSourceCodeUrlToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :source_code_url, :text
  end
end
