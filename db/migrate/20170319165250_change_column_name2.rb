class ChangeColumnName2 < ActiveRecord::Migration[5.0]
  def change
    rename_column :artists, :name, :artist_name
  end
end
