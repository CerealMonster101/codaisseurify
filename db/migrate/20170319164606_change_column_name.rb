class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :songs, :name, :song_name
  end
end
