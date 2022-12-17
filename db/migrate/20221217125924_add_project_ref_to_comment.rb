# frozen_string_literal: true

class AddProjectRefToComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :project, null: false, foreign_key: true
  end
end
