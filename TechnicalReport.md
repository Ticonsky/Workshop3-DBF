# Reporte Técnico - Creación de la Base de Datos YouTubeDB
En este informe se detalla la creación de la base de datos YouTubeDB, diseñada para almacenar información relacionada con videos, canales, playlists y usuarios, siguiendo los requisitos proporcionados.

## Estructura de la Base de Datos
La base de datos YouTubeDB consta de las siguientes tablas:

- Video: Almacena información sobre los videos, incluyendo VideoID (clave primaria), Title, Views, Likes, Dislikes y ChannelID (clave foránea que referencia al canal).
- Channel: Contiene información sobre los canales, como ChannelID (clave primaria), Name, Subscribers y Country.
- Playlist: Guarda información sobre las listas de reproducción, con campos como PlaylistID (clave primaria), Name, Owner, Videos (una lista de VideoIDs separados por comas) y ChannelID (clave foránea que referencia al canal).
- User: Almacena información sobre los usuarios, incluyendo UserID (clave primaria), Name, Alias y Password.
## Cambios Realizados
Se agregó una nueva tabla llamada Subscription para definir la relación entre los usuarios y los canales. Esta tabla se considera una entidad intermedia que sirve para romper las relaciones muchos a muchos entre usuarios y canales. La tabla Subscription contiene los siguientes campos:

- UserID: Clave foránea que referencia al usuario.
- ChannelID: Clave foránea que referencia al canal.
