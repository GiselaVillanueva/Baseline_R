/* Seleccioné el presente dataset, provisto por Tidy Tuesday, de la siguiente página: https://github.com/rfordatascience/tidytuesday/blob/master/data/2023/2023-10-17/readme.md */
/* Se eligieron solamente 2 de las 3 tablas, las necesarias para hacer un join y una consulta */
/* Seleccioné estos datasets entre otros, ya que, a mi entender, explica claramente para qué sirve un join y realizar consultas y subconsultas básicas. */

/* A continuación, hago un join entre ambas tablas, "taylor_albums" y "taylor_album_songs". */
/* En este caso, nos servirá para saber el score del álbum, teniendo solamente el nombre de la canción ("track name"). */

SELECT taylor_albums.user_score, taylor_album_songs.track_name 
from taylor_albums
join taylor_album_songs
on taylor_albums.album_name == taylor_album_songs. album_name
WHERE taylor_album_songs.track_name == "Cold As You"

/* Por otro lado, haremos también una consulta conteniendo una subconsulta. */
/* La misma nos dará como resultado todas las entradas de "taylor_albums" con un score superior a la media. */

SELECT *
FROM taylor_albums
WHERE user_score > (
    SELECT AVG(user_score)
    FROM taylor_albums
)
