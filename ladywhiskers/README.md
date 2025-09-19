# Ladywhiskers' Kometa Configuration

This directory contains a personal Kometa (formerly Plex Meta Manager) configuration. It is designed to automate the management of Plex library metadata, creating curated collections and applying overlays to posters.

## Purpose

The main goal of this configuration is to enrich a Plex media server by:

*   **Creating Collections:** Automatically generate collections for movies, TV shows, and music based on various criteria such as genre, topic, watchlists, and more.
*   **Applying Metadata:** Tag items with appropriate metadata (e.g., subgenres, topics) to improve filtering and discovery.
*   **Enhancing Artwork:** Although not fully implemented in this configuration, Kometa can apply overlays to posters to display information like resolution, audio format, or awards.

## Structure

The configuration is organized into the following directories and files:

*   `config.yml`: The main configuration file. It defines the Plex libraries to manage, global settings, and connections to external services like TMDb, Trakt, etc.
*   `movies/`: Contains configuration files for the movie library.
    *   `movies_critics_other.yml`: Creates collections based on critics' ratings and awards.
    *   `movies_subgenre.yml`: Tags movies with specific subgenres.
    *   `movies_topics.yml`: Tags movies with specific topics.
    *   `movies_watchlist.yml`: Creates collections from watchlists.
*   `music/`: Contains configuration files for the music library.
    *   `Music-Genre.yml`: Creates collections for a vast number of music genres.
    *   `continents.yml`: Creates collections for music from different continents.
    *   `track_collections.yml`: Contains a template for creating collections based on track mood.
*   `tvshows/`: Contains configuration files for the TV show library.
    *   `tvshows_documentaries.yml`: Tags documentary TV shows with specific genres.
    *   `tvshows_topic.yml`: Tags TV shows with specific topics.
    *   `tvshows_watchlist.yml`: Creates collections from watchlists.
*   `templates/`: Contains reusable templates to ensure consistency and reduce repetition.
    *   `musictemplates.yml`: Contains templates used by the music library configurations.

## Usage

To use this configuration, you need to have Kometa set up and configured. You will need to:

1.  **Install Kometa:** Follow the instructions on the [Kometa website](https://kometa.wiki/).
2.  **Configure `config.yml`:** Edit the `config.yml` file to match your environment. This includes:
    *   Updating the Plex URL and token.
    *   Adding API keys for services like TMDb, Trakt, etc.
    *   Customizing any other settings to your liking.
3.  **Run Kometa:** Run the Kometa script to apply the configuration to your Plex library.

**Note:** This configuration is highly personalized. You may need to adjust the settings and file paths to fit your needs. For example, many of the collections are sourced from specific Trakt user lists. You will likely want to change these to your own lists or other sources.

## Disclaimer

This is a personal configuration and is provided as-is. It may not be suitable for all users and may require significant modification to work correctly in your environment. Always back up your Plex data before running any new Kometa configuration.
