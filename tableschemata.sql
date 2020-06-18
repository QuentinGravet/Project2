drop table if exists mergedfinal;
create table mergedfinal(
  "State" text,
  "County" text,
  "Diversity-Index" float8,
  "Black" float8,
  "American Indian" float8,
  "Asian" float8,
  "Native Hawaiian" float8,
  "Two or More Races" float8,
  "Hispanic/Latino" float8,
  "White" float8,
  "Unemployment Rate 2013" float8
);
copy mergedfinal
from 'C:/Users/**UsernameHere**/Desktop/Project2/Resources/mergedfinal.csv' csv header;