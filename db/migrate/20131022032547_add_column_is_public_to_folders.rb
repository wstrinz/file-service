class AddColumnIsPublicToFolders < ActiveRecord::Migration
  def change
    add_column :folders, :is_public, :boolean
  end
end
