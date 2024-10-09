# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
    {:title => 'Action Spiderman', :rating => 'PG-13',
    :release_date => '15-Aug-2021'},
    {:title => 'Adventures of Maluha', :rating => 'PG-13',
    :release_date => '13-Sept-2021'},
    {:title => 'Dance Competition', :rating => 'PG-13',
    :release_date => '14-Oct-2022'},
    {:title => 'Don', :rating => 'PG-13',
    :release_date => '13-Nov-2021'},
    {:title => 'Coder', :rating => 'PG-13',
    :release_date => '13-May-2023'}
]

# Use find_or_create_by to avoid duplicates
more_movies.each do |movie|
  Movie.find_or_create_by(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
  end
end