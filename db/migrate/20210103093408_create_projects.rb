class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
