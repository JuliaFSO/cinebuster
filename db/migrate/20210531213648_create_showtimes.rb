class CreateShowtimes < ActiveRecord::Migration[6.0]
  def change
    create_table :showtimes do |t|
      t.time :session_time
      t.string :room
      t.string :movie_list
      t.references :user, null: false, foreign_key: true
      t.float :price
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
