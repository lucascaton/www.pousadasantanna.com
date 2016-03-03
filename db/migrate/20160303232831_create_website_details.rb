class CreateWebsiteDetails < ActiveRecord::Migration
  def change
    create_table :website_details do |t|
      t.string     :headline1
      t.string     :headline2
      t.text       :intro
      t.attachment :photo1
      t.attachment :photo2
      t.attachment :photo3
      t.attachment :photo4

      t.timestamps
    end
  end
end
