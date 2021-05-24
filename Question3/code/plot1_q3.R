########################
###### Plot 1 Q3 #######
########################


plot1_q3 <- function(df_bbc, df_cnn, df_eco, title, subtitle, Ylab, Xlab){

    df_use <- bind_rows(
        df_bbc %>%
            select(photos, video) %>%
            mutate(photos = ifelse(photos=="[]", 0, 1),
                   Media = ifelse(photos==1, "photo", ifelse(video==1, "video", "none")),
                   Outlet = "BBC"),
        df_cnn %>%
            select(photos, video) %>%
            mutate(photos = ifelse(photos=="[]", 0, 1),
                   Media = ifelse(photos==1, "photo", ifelse(video==1, "video", "none")),
                   Outlet = "CNN"),
        df_eco %>%
            select(photos, video) %>%
            mutate(photos = ifelse(photos=="[]", 0, 1),
                   Media = ifelse(photos==1, "photo", ifelse(video==1, "video", "none")),
                   Outlet = "Eco"))

    g <- ggplot(df_photo) +
        geom_bar(aes(x = Outlet, colour = Media, fill = Media))+
        labs(title = title,
             subtitle = subtitle,
             y = Ylab,
             x = Xlab)

    g

}

