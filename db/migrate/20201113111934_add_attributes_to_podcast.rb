class AddAttributesToPodcast < ActiveRecord::Migration[6.0]
  def change
    add_column :podcasts, :title, :string
    add_column :podcasts, :description, :text
    add_column :podcasts, :itune, :string
    add_column :podcasts, :pobay, :string
  end
end
