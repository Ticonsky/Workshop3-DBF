# WorkShop3

## Description

The project aims to create a database schema for a YouTube-like application. It includes tables for storing information about videos, channels, playlists, and users. The schema follows the requirements provided for the application's functionality.

## Database Structure

The database, named YouTubeDB, consists of the following tables:

- **Video:** Stores information about videos, including VideoID (primary key), Title, Views, Likes, Dislikes, and ChannelID (foreign key referencing the channel).
- **Channel:** Contains information about the channels, such as ChannelID (primary key), Name, Subscribers, and Country.
- **Playlist:** Stores information about playlists, with fields like PlaylistID (primary key), Name, Owner, Videos (a list of VideoIDs separated by commas), and ChannelID (foreign key referencing the channel).
- **User:** Stores information about users, including UserID (primary key), Name, Alias, and Password.

## Changes Made

A new table called Subscription was added to define the relationship between users and channels. This table serves as an intermediate entity to break the many-to-many relationships between users and channels. The Subscription table contains the following fields:

- **UserID:** Foreign key referencing the user.
- **ChannelID:** Foreign key referencing the channel.
