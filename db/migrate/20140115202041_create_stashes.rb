class CreateStashes < ActiveRecord::Migration
  def change
    create_table :stashes do |t|
      t.string :description

      t.timestamps
    end
  end
end
