/*
Student name: Nazifa Firoz              
Student username: adgd922            
*/

/* SECTION 1 - CREATE TABLE STATEMENTS */
CREATE TABLE adgd922_musicUser(
  userID INTEGER PRIMARY KEY,
  username VARCHAR(50),
  name VARCHAR(50),
  surname VARCHAR(50),
  email VARCHAR(50),
  password VARCHAR(50),
  profilePicture VARCHAR(50),
  dateOfReg DATE
);

CREATE TABLE adgd922_musicArtist(
  artistID INTEGER PRIMARY KEY,
  username VARCHAR(50),
  name VARCHAR(50),
  surname VARCHAR(50),
  email VARCHAR(50),
  password VARCHAR(50),
  profilePicture VARCHAR(50),
  dateOfReg DATE
);

CREATE TABLE adgd922_tracks(
  tracksID INTEGER PRIMARY KEY,
  artistID INTEGER,
  title VARCHAR(50),
  audio VARCHAR(50),
  FOREIGN KEY (artistID) REFERENCES adgd922_musicArtist(artistID)
);

CREATE TABLE adgd922_playlist(
  playlistID INTEGER PRIMARY KEY,
  userID INTEGER,
  title VARCHAR(50),
  dateCreated DATE,
  FOREIGN KEY (userID) REFERENCES adgd922_musicUser(userID)
);

CREATE TABLE adgd922_trackplaylist(
  tracksID INTEGER,
  playlistID INTEGER,
  FOREIGN KEY (tracksID) REFERENCES adgd922_tracks(tracksID),
  FOREIGN KEY (playlistID) REFERENCES adgd922_playlist(playlistID)
);

CREATE TABLE adgd922_likes(
  likesID INTEGER PRIMARY KEY,
  userID INTEGER,
  tracksID INTEGER,
  dateLiked DATE,
  FOREIGN KEY (userID) REFERENCES adgd922_musicUser(userID),
  FOREIGN KEY (tracksID) REFERENCES adgd922_tracks(tracksID)
);


/* SECTION 2 - INSERT STATEMENTS */

INSERT INTO adgd922_musicUser VALUES (0001, "aleen", "Alina", "Naveed","alina@gmail.com", "aleen101", "riocatpicture.png", "2015-05-07"),
                        (0002, "pluto", "Reisa","Miah", "reisa@gmail.com", "reista1", "pluto.png", "2015-09-21"),
                        (0003, "adipaa", "Adifah","Matubbar", "adifah@gmail.com", "adi101", "straykids.png", "2016-05-05"),
                        (0004, "ibby", "Ibrahim","Uddin", "ibrahim@gmail.com", "ibzz1", "shoes.png", "2016-02-27"),
                        (0005, "farabifazy", "Farzina","Matubbar", "farzina@gmail.com", "fazy101", "jungkook.jpg", "2017-10-09"),
                        (0006, "saniag", "Sania","Ghori", "sania@gmail.com", "sania101", NULL, "2019-07-01"),
                        (0007, "nilo", "Nilofar","Fazli", "nilofar@gmail.com", "nilofar101", "nilo.jpg", "2020-07-19"),
                        (0008, "therioter", "Drayden","Webster", "drayden@gmail.com", "drayden1", "gang.png", "2021-08-19"),
                        (0009, "yzoo", "Yasin","Firoz", "yasin@gmail.com", "yasin2", "pluh.png", "2021-11-02"),
                        (0010, "hasanm", "Hasan","Mahmud", "hasan@gmail.com", "hasan1", "zoro.png", "2022-03-10"),
                        (0011, "mai", "Mai-linh","Lee", "mailinh@gmail.com", "mai101", "newjeans.png", "2022-05-05"),
                        (0012, "rigedddy", "Nazifa","Firoz", "nazifa@gmail.com", "nazifa1", NULL, "2023-09-26");  


INSERT INTO adgd922_musicArtist VALUES (0001, "helloalina", "Naveed","Ahmad", "naveedale@gmail.com", "ale101", "leon.png", "2015-05-07"),
                        (0002, "akbar", "Akbar","Ali" ,"akbar@gmail.com", "akbar1", "draingang.png", "2015-03-21"),
                        (0003, "heliocre", "Jannat","Islam", "jannat@gmail.com", "jannat101", "onepiece.png", "2016-11-25"),
                        (0004, "svdiays", "Sadia","Yesmin", "sadia@gmail.com", "shaz101", "wonho.png", "2016-11-02"),
                        (0005, "savvy", "Sav","Gurung", "sav@gmail.com", "savy101", "clouds.jpg", "2017-12-20"),
                        (0006, "gilb", "Gilbert","Sayers", "gilbertsay@gmail.com", "sayers101", NULL, "2019-07-01"),
                        (0007, "mishiba", "Murshida","Chowdhury", "murshidac@gmail.com", "murshida101", "cow.jpg", "2020-07-19"),
                        (0008, "fairy", "Farihah","Alam", "farihah@gmail.com", "farihah1", "fairies.png", "2021-08-19"),
                        (0009, "tarah", "Tarah","Begum", "tarah@gmail.com", "tarah2", "capybara.png", "2021-11-02"),
                        (0010, "najjj", "Najma","Farrah", "najmad@gmail.com", "najma1", "frog.png", "2022-09-02"),
                        (0011, "vero", "Veronica","Correa", "vero12@gmail.com", "veronica12", NULL, "2023-08-07"),
                        (0012, "nowelia", "Noelia","B", "noelia@gmail.com", "noel101", "paint.png", "2023-08-30");


INSERT INTO adgd922_tracks VALUES (0001, 0003, "Pink Friday Girls", "pinkfridaygirls.mp3"),
                        (0002, 0011, "Neon 1989", "neon1989.mp3"),
                        (0003, 0006, "Lucid Dream", "luciddream.mp3"),
                        (0004, 0007, "In My Dreams", "inmydreams.mp3"),
                        (0005, 0005, "Last Train at 25 O'clock", "lasttrain.mp3"),
                        (0006, 0009, "Fairy Of Shampoo", "fairyofshampoo.mp3"),
                        (0007, 0010, "Mamma Mia", "mammamia.mp3"),
                        (0008, 0012, "Seasons", "seasons.mp3"),
                        (0009, 0002, "Wonder Girl", "wondergirl.mp3"),
                        (0010, 0001, "Sherlock", "sherlock.mp3"),
                        (0011, 0004, "Luxxid", "luxxid.mp3"),
                        (0012, 0008, "Love Whisper", "lovewhisper.mp3");       


INSERT INTO adgd922_playlist VALUES (0001, 0003, "Chill Playlist", "2015-10-07"),
                        (0002, 0011, "Throwback", "2016-02-22"),
                        (0003, 0006, "My favs", "2017-09-15"),
                        (0004, 0007, "Bangers", "2018-04-01"),
                        (0005, 0005, "Car Aux", "2019-11-18"),
                        (0006, 0009, "Summer Vibes", "2020-06-03"),
                        (0007, 0010, "2021 best songs", "2021-01-26"),
                        (0008, 0012, "Party Songs", "2022-08-09"),
                        (0009, 0002, "Yung Bruh", "2023-03-14"),
                        (0010, 0001, "For her", "2016-10-22"),
                        (0011, 0004, "Indie Rock", "2018-06-14"),
                        (0012, 0008, "Sad Playlist", "2020-12-30");


INSERT INTO adgd922_trackplaylist VALUES (0001, 0005),
                        (0002, 0003),
                        (0003, 0012),
                        (0004, 0002),
                        (0005, 0011),
                        (0006, 0009),
                        (0007, 0010),
                        (0008, 0008),
                        (0009, 0004),
                        (0010, 0002),
                        (0011, 0004),
                        (0012, 0006),
                        (0001, 0008),
                        (0004, 0009),
                        (0002, 0011),
                        (0006, 0005),
                        (0007, 0007),
                        (0008, 0010),
                        (0009, 0009),
                        (0010, 0006);


INSERT INTO adgd922_likes VALUES (0001, 0003, 0002, '2015-10-07'),
                        (0002, 0011, 0002, '2016-02-22'),
                        (0003, 0006, 0002, '2017-09-15'),
                        (0004, 0007, 0006, '2018-04-01'),
                        (0005, 0005, 0005, '2019-11-18'),
                        (0006, 0009, 0006, '2020-06-03'),
                        (0007, 0010, 0009, '2021-01-26'),
                        (0008, 0012, 0008, '2022-08-09'),
                        (0009, 0002, 0009, '2023-03-14'),
                        (0010, 0001, 0010, '2016-10-22'),
                        (0011, 0004, 0010, '2018-06-14'),
                        (0012, 0008, 0012, '2020-12-30');


/* SECTION 3 - UPDATE STATEMENTS */
/*1*/
UPDATE adgd922_musicUser
SET email = 'pichipluto@gmail.com',
    profilePicture = 'pichi.png'
WHERE userID = 0002;
/*2*/
UPDATE adgd922_tracks
SET audio = 'rundevilrun.mp3',
    title = "Run Devil Run"
WHERE tracksID = 0011;


/* SECTION 4 - SINGLE TABLE SELECT STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective SELECTs*/

/* 1)  Retrive all the users who have the surname "Firoz" */
SELECT *
FROM adgd922_musicUser
WHERE surname = 'Firoz';

/* 2)  Retrives the names and surnames of the users who have no profile picture */
SELECT name, surname 
FROM adgd922_musicUser
WHERE profilePicture IS NULL;

/* 3) Retrive all the users where the username column contains the letter "a" anywhere in the username. */
SELECT username, name
FROM adgd922_musicUser
WHERE username LIKE '%a%'
ORDER BY username DESC;

/* 4)  Retrieve the email of the artist with the username "savvy" */
SELECT email
FROM adgd922_musicArtist
WHERE username = 'savvy';

/* 5) Retrieve title and the date of creation of the playlists have been created from the year 2016 to 2021 */
SELECT title, dateCreated
FROM adgd922_playlist
WHERE dateCreated BETWEEN '2016-01-01' AND '2018-12-31'
ORDER BY title DESC;

/* 6)  Retrieve all the playlists have been created before 2017 and after 2022 */
SELECT *
FROM adgd922_playlist
WHERE dateCreated < '2017-01-01' OR dateCreated > '2022-12-31'
ORDER BY dateCreated;



/* SECTION 5 - MULTIPLE TABLE SELECT STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective SELECTs */

/* 1) Retrieve all tracks in the playlist called "Bangers" */
SELECT adgd922_tracks.*
FROM adgd922_tracks
JOIN adgd922_trackplaylist ON adgd922_tracks.tracksID = adgd922_trackplaylist.tracksID
JOIN adgd922_playlist ON adgd922_trackplaylist.playlistID = adgd922_playlist.playlistID
WHERE adgd922_playlist.title = "Bangers";

/* 2)  Retrieve the names and surnames of users who have liked tracks and the titles of those specific tracks in order */
SELECT u.name, u.surname, t.title
FROM adgd922_musicUser u
JOIN adgd922_likes l ON u.userID = l.userID
JOIN adgd922_tracks t ON l.tracksID = t.tracksID
ORDER BY t.title DESC;

/* 3)  Retrieve the song that has most likes and show how many likes it has */
SELECT t.title AS "Song Title", COUNT(l.likesID) AS "Number of Likes"
FROM adgd922_tracks t
JOIN adgd922_likes l ON t.tracksID = l.tracksID
GROUP BY t.title
ORDER BY COUNT(l.likesID) DESC
LIMIT 1;

/* 4)  Retrieve the songs that have no likes in the database so far */
SELECT *
FROM adgd922_tracks
WHERE tracksID NOT IN (
    SELECT tracksID
    FROM adgd922_likes
);

/* 5) Retrieve the total number of likes for each track and filter the results to include only tracks that have more than one like */
SELECT t.tracksID, t.title, COUNT(l.likesID) AS like_count
FROM adgd922_tracks t
JOIN adgd922_likes l ON t.tracksID = l.tracksID
GROUP BY t.tracksID
HAVING COUNT(l.likesID) > 1;

/* 6)  Retrieve all the playlist on the database, including which user owns the playlist, the songs in the playlist and which artist the songs belong to */
SELECT u.username AS user_username, p.title AS playlist_title, t.title AS track_title, a.username AS artist_username
FROM adgd922_playlist p
JOIN adgd922_musicUser u ON p.userID = u.userID
JOIN adgd922_trackplaylist tp ON p.playlistID = tp.playlistID
JOIN adgd922_tracks t ON tp.tracksID = t.tracksID
JOIN adgd922_musicArtist a ON t.artistID = a.artistID;



/* SECTION 6 - DELETE ROWS (make sure the SQL is commented out in this section)
DELETE FROM adgd922_musicArtist
WHERE username = "fairy";

DELETE FROM adgd922_tracks
WHERE title = "Mamma Mia";
*/

/* SECTION 7 - DROP TABLES (make sure the SQL is commented out in this section)
DROP TABLE adgd922_musicUser;
DROP TABLE adgd922_musicArtist;
DROP TABLE adgd922_tracks;
DROP TABLE adgd922_playlist;
DROP TABLE adgd922_trackplaylist;
DROP TABLE adgd922_likes;

*/






