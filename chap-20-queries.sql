--Chapter 20
-- 1 Select * From Genre;
-- 2 Insert into Artist (ArtistName,YearEstablished) Values ('Brothers Osborne', 2014);

-- 3 Insert Into Album (Title, ReleaseDate,AlbumLength, [Label], ArtistId, GenreId)Values ('Pawn Shop', 2015, 38.58, 'EMI', 29, 11 );
-- 4 Insert Into Song (Title, SongLength, ReleaseDate,GenreId, ArtistId, AlbumId) Values ('Dirt Rich', 3.40, 12/04/2014, 11,29, 24)
-- 4 Insert Into Song (Title, SongLength, ReleaseDate,GenreId, ArtistId, AlbumId) Values ('Summer', 3.1, 12/30/2014, 11,29, 24)
--book example -- SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
--book example -- SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;
------------------------------------------------------------------------------------------------------
-- 5 Write a SELECT query that provides the song titles, album title, and artist name for all of the data 
--you just entered in. Use the LEFT JOIN keyword sequence to connect the tables,
-- and the WHERE keyword to filter the results to the album and artist you added.

--SELECT Song.Title, Album.Title, ArtistName 
--FROM Song
--Join Album
--ON Song.AlbumId = Album.Id
--Join Artist ON Album.ArtistId = Artist.Id
--Where ArtistName = 'Brothers Osborne'
----------------------------------------------------------------------------------------------------
-- 6 Write a SELECT statement to display how many songs exist for each album. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence. 

--SELECT Album.Title, Count(Song.AlbumId)As 'Song Count'
--FROM Album Join Song
--On Song.AlbumId = Album.Id
--GROUP BY Album.Title, AlbumId
---------------------------------------------------------------------------------------------------------
-- 7 Write a SELECT statement to display 
--how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--SELECT ArtistName,Count(Song.ArtistId)As 'Number of Songs by Artist'
--FROM Artist Join Song
--ON Song.ArtistId = Artist.Id
--GROUP BY ArtistName
--------------------------------------------------------------------------------------------------------
--8 Write a SELECT statement to display how many songs exist for each genre.
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--SELECT [Label],Count(Song.GenreId)As 'Number of Songs in this Genre'
--FROM  Genre Join Song
--ON Song.GenreId = Genre.Id
--GROUP BY [Label]
-------------------------------------------------------------------------------------------------------**************************
--9 Using MAX() function, write a select statement to find the album with the longest duration.
--The result should display the album title and the duration.

--SELECT  Max(AlbumLength)As 'Longest Duration'
--FROM Album

--Select Title, (AlbumLength)As 'Longest Duration'
--From Album 
--Where AlbumLength > 3700 

-- Below is what worked with one query

--select top 1 title, (AlbumLength)As 'Longest Duration'
--from Album
--order by albumLength Desc

-------------------------------------------------------------------------------------------------------------****************************
-- 10 Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

--SELECT Top 1 Title,SongLength AS 'Longest Song'
--From Song
--Order By SongLength Desc
--------------------------------------------------------------------------------------------------------------------------------------------

-- 11 Modify the previous query to also display the title of the album.

SELECT top 1 Album.Title, Song.Title, SongLength AS 'Longest Song'
From Song
Join Album
ON Song.AlbumId = Album.Id
order by SongLength Desc


--SELECT Song.Title,Song.SongLength, Album.Title
--From Song
--JOIN Album 
--ON Song.AlbumId = Album.Id
--WHERE SongLength = (
--		SELECT MAX(SongLength)
--		FROM Song
--	);




