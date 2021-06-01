class ChangeShowtime < ActiveRecord::Migration[6.0]
  def change
    remove_column :showtimes, :movie_list
  end
end
