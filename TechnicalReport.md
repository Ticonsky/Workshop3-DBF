# YouTubeDB Database Creation Report

This report details the creation of the YouTubeDB database, designed to store information related to videos, channels, playlists, and users, following the provided requirements.

## Database Structure

The YouTubeDB database consists of the following tables:

- **Video:** Stores information about the videos, including VideoID (primary key), Title, Views, Likes, Dislikes, and ChannelID (foreign key referencing the channel).
- **Channel:** Contains information about the channels, such as ChannelID (primary key), Name, Subscribers, and Country.
- **Playlist:** Stores information about playlists, with fields like PlaylistID (primary key), Name, Owner, Videos (a list of VideoIDs separated by commas), and ChannelID (foreign key referencing the channel).
- **User:** Stores information about users, including UserID (primary key), Name, Alias, and Password.

## Changes Made

A new table called Subscription was added to define the relationship between users and channels. This table serves as an intermediate entity to break the many-to-many relationships between users and channels. The Subscription table contains the following fields:

- **UserID:** Foreign key referencing the user.
- **ChannelID:** Foreign key referencing the channel.
