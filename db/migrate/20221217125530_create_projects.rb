# frozen_string_literal: true

class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.text :technologies
      t.text :image
      t.integer :likes_counter
      t.integer :comments_counter

      t.timestamps
    end
  end
end
