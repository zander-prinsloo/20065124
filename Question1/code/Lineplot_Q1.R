###################
### Plot 3 ########
###################

Lineplot_Q1 <- function(df, PlotType, Title, Subtitle, Caption,
                       Ylab, Xlab){


    df <- bind_rows(df_movies %>%
                            select("Audience  score %", "Worldwide Gross") %>%
                            mutate(Type = "Audience and Gross Relationship") %>%
                            summarise(AudienceScore = as.numeric(`Audience  score %`),
                                      WorldWideGross = as.numeric(`Worldwide Gross`),
                                      Type),
                        tibble(AudienceScore = seq(from = 35, to = 90, length = nrow(df_movies)),
                               WorldWideGross = seq(from = 50, to = 500, length = nrow(df_movies)))) %>%
        mutate(Type = ifelse(is.na(Type), "Linear Relationship", Type))


        g1 <- ggplot(data = df) +
            geom_line(mapping = aes(x = AudienceScore, y = WorldWideGross, colour = Type))+
            theme_bw() +
            labs(title = "Line Plot - Relationship Between World Wide Gross and Audience Scores",
                 subtitle = "This is the jagged line plot",
                 Caption = "Caption",
                 x = "Audience Rating",
                 y = "World Wide Gross")
            # geom_abline(slope=3, intercept = 0, colour = "coral")

    g1



}











