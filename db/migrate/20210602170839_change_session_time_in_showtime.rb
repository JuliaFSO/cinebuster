class ChangeSessionTimeInShowtime < ActiveRecord::Migration[6.0]
  def change
    change_column :showtimes, :session_time, "timestamp USING current_date + session_time"
  end
end
