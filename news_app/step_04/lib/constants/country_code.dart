class Country {
  const Country(this.name, this.domain);

  final String name;
  final String domain;
}

const Country unitedArabEmirates = Country('United Arab Emirates', 'ae');
const Country switzerland = Country('Switzerland', 'ch');
const Country russia = Country('Россия', 'ru');
const Country india = Country('India', 'in');
const Country unitedStates = Country('United States', 'us');
const Country korea = Country('Korea', 'kr');
const Country turkey = Country('Türkiye', 'tr');
const Country ukraine = Country('України', 'ua');
const Country italy = Country('Italy', 'it');

// List
// Map
// Set

// Set ichindeki kolleksyany kaitalanuusuna jol berbeit

/*
  List sandarList = [1,2,3,4,5,6,7,3,5,7,9];
  Set sandarSet = {1,2,3,4,5,6,7,3,5,7,9};
  print(sandarList); => [1, 2, 3, 4, 5, 6, 7, 3, 5, 7, 9]
  print(sandarSet); => {1, 2, 3, 4, 5, 6, 7, 9}
*/

const Set<Country> countriesSet = {
  unitedArabEmirates,
  switzerland,
  russia,
  india,
  unitedStates,
  korea,
  turkey,
  ukraine,
  italy,
};

const List<Country> countriesList = [
  unitedArabEmirates,
  switzerland,
  russia,
  india,
  unitedStates,
  korea,
  turkey,
  ukraine,
  italy,
  india,
  ukraine,
];
