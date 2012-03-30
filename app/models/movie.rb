class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.similar( id )
     movie = find(id)
     raise ArgumentError,"'#{movie.title}' has no director info"  if movie.director.empty? 
     where "id <> #{id} AND director = '#{movie.director}'" 
  end
end
