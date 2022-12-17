# frozen_string_literal: true

class AddProjectRefToLike < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :project, null: false, foreign_key: true
  end
end
