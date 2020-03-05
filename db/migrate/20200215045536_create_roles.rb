class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.belongs_to :superior, optional: true
      t.timestamps
    end
  end
end
