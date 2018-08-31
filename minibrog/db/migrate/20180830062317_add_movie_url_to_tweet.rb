class AddMovieUrlToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :movie_url, :text
  end
end
