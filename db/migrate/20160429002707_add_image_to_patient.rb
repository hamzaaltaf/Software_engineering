class AddImageToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :image, :string
  end
end
