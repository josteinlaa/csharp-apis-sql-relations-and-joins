select Movie.title, Director.name from Movie inner join Director on Movie.director_id=Director.id;

select Movie.title, Director.name, Star.name from Movie
inner join Director on Movie.director_id=Director.id
inner join Star on Movie.star_id=Star.id;

select Movie.title from Movie inner join Director on Movie.director_id=Director.id
where director.country='USA';

select Movie.title from Movie inner join Director on Movie.director_id=Director.id 
inner join Writer on Movie.star_id=Writer.id where Writer.name=Director.name;

select Director.name, Movie.title from Movie inner join Director on Movie.director_id=Director.id where Movie.score >=8;

select Movie.title, Star.name from Movie inner join Star on Movie.star_id=Star.id where Star.dob> '1950-12-31';

select Movie.title, Writer.email from Movie inner join Writer on Movie.writer_id=Writer.id;

select Movie.title, Director.country from Movie inner join Director on Movie.director_id=Director.id where Movie.year < 1980;

select Director.name, count(Movie.title) from Director inner join Movie on Director.id=Movie.director_id group by Director.name having count(Movie.title) > 2;

select Director.name, Movie.title, Star.name from Movie inner join Director on Movie.director_id=Director.id inner join Star on Movie.star_id=Star.id where Movie.genre='Historical';
