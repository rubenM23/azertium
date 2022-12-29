class CreateReleases < ActiveRecord::Migration[7.0]
  def change
    create_table :releases do |t|
      t.references :creator, foreign_key: { to_table: 'people' }
      t.references :receiver, foreign_key: { to_table: 'people' }
      t.string :subject
      t.text :content
      t.references :previous_release, null: true, forreign_key: { to_table: 'releases'}

      t.timestamps
    end
  end
end
