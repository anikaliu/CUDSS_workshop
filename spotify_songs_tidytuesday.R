#One example on what could be done:

#I wanty to look only at the songs from 2019 and want to have the most speechy songs on top
spotify_songs%>%filter(track_album_release_date=='2019')%>%arrange(speechiness)

#Now the plotting:
ggplot(spotify_df,aes(loudness, duration_ms))+
  geom_point(aes(color=speechiness), alpha=0.8)+
  facet_wrap(~playlist_genre)


ggsave('~/spotify_songs_example.pdf')

#But of course there is way more that can be done! Here are few example questions you might be itnerested in:

#Who are the top 5 track artist by playlist genre?
#How did danceability in EDM evolve over time?
#How are songs from Kendrick Lamar different to those from Rihanna?
  
  
# More inspiration: https://twitter.com/hashtag/tidytuesday?f=live
# Good overview of commands (we didn't go through all!): https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf
# Once you are familiar with the basic package, here are some useful extensions: http://www.ggplot2-exts.org/gallery/
