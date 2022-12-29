class CreateAttacheds < ActiveRecord::Migration[7.0]
  def change
    create_table :attacheds do |t|
      t.references :release
      t.timestamps
    end
  end
end
