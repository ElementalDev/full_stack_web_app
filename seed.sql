-- If the table 'movies' exists already, then delete it
DROP TABLE IF EXISTS movies;

-- Create a table called movies
CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  img_url TEXT,
  title VARCHAR(100),
  year_released VARCHAR(4),
  summary TEXT
);

-- Insert information into movies
INSERT INTO movies(img_url, title, year_released, summary) VALUES ('https://upload.wikimedia.org/wikipedia/en/8/8a/Dark_Knight.jpg', 'The Dark Knight', '2008', 'With the help of allies Lt. Jim Gordon and DA Harvey Dent, Batman has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.');

INSERT INTO movies(img_url, title, year_released, summary) VALUES ('https://upload.wikimedia.org/wikipedia/en/f/fc/Thor_poster.jpg', 'Thor', '2011', 'As the son of Odin, king of the Norse gods, Thor will soon inherit the throne of Asgard from his aging father. However, on the day that he is to be crowned, Thor reacts with brutality when the gods enemies, the Frost Giants, enter the palace in violation of their treaty. As punishment, Odin banishes Thor to Earth. While Loki, Thor''s brother, plots mischief in Asgard, Thor, now stripped of his powers, faces his greatest threat.');

INSERT INTO movies(img_url, title, year_released, summary) VALUES ('https://upload.wikimedia.org/wikipedia/en/thumb/1/1f/Conjuring_poster.jpg/220px-Conjuring_poster.jpg', 'The Conjuring', '2013', 'In 1970, paranormal investigators and demonologists Lorraine and Ed Warren are summoned to the home of Carolyn and Roger Perron. The Perrons and their five daughters have recently moved into a secluded farmhouse, where a supernatural presence has made itself known. Though the manifestations are relatively benign at first, events soon escalate in horrifying fashion, especially after the Warrens discover the house''s macabre history.');

INSERT INTO movies(img_url, title, year_released, summary) VALUES ('https://upload.wikimedia.org/wikipedia/en/4/46/Deadpool_poster.jpg', 'Deadpool', '2016', 'Wade Wilson is a former Special Forces operative who now works as a mercenary. His world comes crashing down when evil scientist Ajax tortures, disfigures and transforms him into Deadpool. The rogue experiment leaves Deadpool with accelerated healing powers and a twisted sense of humor. With help from mutant allies Colossus and Negasonic Teenage Warhead, Deadpool uses his new skills to hunt down the man who nearly destroyed his life.');

INSERT INTO movies(img_url, title, year_released, summary) VALUES ('https://upload.wikimedia.org/wikipedia/en/7/7f/Star_Wars_The_Last_Jedi.jpg', 'Star Wars: The Last Jedi', '2017', 'Luke Skywalker''s peaceful and solitary existence gets upended when he encounters Rey, a young woman who shows strong signs of the Force. Her desire to learn the ways of the Jedi forces Luke to make a decision that changes their lives forever. Meanwhile, Kylo Ren and General Hux lead the First Order in an all-out assault against Leia and the Resistance for supremacy of the galaxy.');
