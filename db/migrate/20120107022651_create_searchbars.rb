class CreateSearchbars < ActiveRecord::Migration
  def change
    create_table :searchbars do |t|
      t.string :name
      t.string :searchurl

      t.timestamps
    end
  end
end
