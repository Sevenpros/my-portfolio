# frozen_string_literal: true

class AddDemoUrlToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :demo_url, :text
  end
end
