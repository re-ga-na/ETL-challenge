CREATE TABLE spotify (
	spotifyid text,
	chart_position int, 
	track_name text,
	artist text,
	streams int,
	url text,
	region text
		
);

CREATE TABLE spotify_song_details (
    spotifyid text,
	danceability float,
    energy float,
    song_key float,
    loudness float,
    song_mode float,
    speechiness float,
    acousticness float,
    instrumentalness float,
    liveness float,
    valence float,
    tempo float,
    duration_ms float,
    time_signature float
);
    


-- joining tables
SELECT spotify.spotifyid, spotify.chart_position, spotify.track_name, spotify.artist, spotify.streams, spotify.url, spotify.chart_date, spotify.region
FROM spotify
JOIN spotify_song_details
ON spotify.spotifyid = spotify_song_details.spotifyid;