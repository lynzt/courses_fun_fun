let animals = [
  {name: 'fluffy', species: 'rabbit'},
  {name: 'emma', species: 'dog'},
  {name: 'hudson', species: 'dog'},
  {name: 'charlie', species: 'cat'},
  {name: 'kahlyn', species: 'dog'},
  {name: 'blueberry', species: 'rabbit'},
  {name: 'molly', species: 'duck'}
]



let dogs = animals.filter(animal => animal.species == 'dog');

// let dogs = animals.filter(function(animal) {
//   return animal.species == 'dog';
// })
