class CreateReplacements < ActiveRecord::Migration[5.1]
  def change
    create_table :replacements do |t|
      t.string :url, limit: 2083
      t.string :replacement
      t.string :original

      t.timestamps
    end
  end
end
