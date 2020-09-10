class RemoveImagesFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :image
    remove_column :projects, :image_company_logo
  end
end
