drop table if exists diversityindex;

create table diversityindex("Location" float8, 
                            "Diversity-Index" float8, 
                            "Black or African American alone, percent, 2013" int, 
                            "American Indian and Alaska Native alone, percent, 2013" int, 
                            "Asian alone, percent, 2013" int,
                            "Native Hawaiian and Other Pacific Islander alone, percent," int, 
                            "Two or More Races, percent, 2013" int, "Hispanic or Latino, percent, 2013" int,
                            "White alone, not Hispanic or Latino, percent, 2013" int);

copy diversityindex from 'C://Resources/diversityindex.csv' csv header;

select * from diversityindex;

drop table if exists unemployment_output;

create table unemployment_output ("Year" int,
                                  "Month" varchar,
                                  "State" varchar,
                                  "County" varchar,
                                  "Rate" int);
                    

copy unemployment_output from 'C:\Resources\unemployment_output.csv' csv header;

select * from unemployment_output;


create view diversityindex_CA
select  "Black or African American alone, percent, 2013", 
                            "American Indian and Alaska Native alone, percent, 2013", 
                            "Asian alone, percent, 2013",
                            "Native Hawaiian and Other Pacific Islander alone, percent,", 
                            "Two or More Races, percent, 2013",
                            "Hispanic or Latino, percent, 2013",
                            "White alone, not Hispanic or Latino, percent, 2013"); from diversityindex
where "Diversity-Index" = "CA"
order by "Diversity-Index" desc

create view unemployment_output_CA
select "Rate" from unemployment_output
where "State" = "California"
and "Year" = 2013
order by "State" desc
