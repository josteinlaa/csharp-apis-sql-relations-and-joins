select Movie.title, Director.name from Movie inner join Director on Movie.director_id=Director.id;

select Movie.title, Director.name, Star.name from Movie
inner join Director on Movie.director_id=Director.id
inner join Star on Movie.star_id=Star.id;

select Movie.title from Movie inner join Director on Movie.director_id=Director.id
where director.country='USA';

select Movie.title from Movie inner join Director on Movie.director_id=Director.id 
inner join Writer on Movie.star_id=Writer.id where Writer.name=Director.name;

select Director.name, Movie.title from Movie inner join Director on Movie.director_id=Director.id where Movie.score >=8;


