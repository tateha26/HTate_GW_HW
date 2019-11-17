select * from animals;

insert into animals(id, animal_name, species)
values
	('1', 'Mickey Mouse', 'duck'),
	('2', 'Minnie Mouse', 'duck'),
	('3', 'Donald Duck', 'mouse');
	
select * from animals;

UPDATE animals
SET species = 'mouse'
WHERE
	species = 'duck';

UPDATE animals
SET species = 'duck'
WHERE
	animal_name = 'Donald Duck';

	

