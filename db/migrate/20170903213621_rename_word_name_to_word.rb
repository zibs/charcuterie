class RenameWordNameToWord < ActiveRecord::Migration[5.0]
  def change
    rename_column :words, :name, :word
  end
end
