class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :summary
      t.integer :release_year
      t.text :poster_url

      t.timestamps
    end
  end
end
