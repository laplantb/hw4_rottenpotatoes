class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.similar( id, director )
     where "id <> '#{id}' AND director = '#{director}'"
  end
end
