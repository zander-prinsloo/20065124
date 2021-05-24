###################
### Plot 1 ########
###################


Barplot1_Q1 <- function(df, title, subtitle, caption,
                        Xlab, Ylab, xaxis_size = 10){

    df_use <- df %>%
        na.omit() %>%
        select(`Audience  score %`, `Rotten Tomatoes %`) %>%
        mutate(AudienceAbove85 = ifelse(`Audience  score %`>85, "Above85", "NotAbove85"),
               RottenAbove80 = ifelse(`Rotten Tomatoes %`>80, "Above80", "NotAbove80"))


    g <- ggplot(data = df_use) +
        geom_bar(mapping = aes(x = RottenAbove80, colour = AudienceAbove85, fill = AudienceAbove85)) +
        labs(title = title,
             subtitle = subtitle,
             caption = paste("Note: \n", caption),
             x = Xlab,
             y = Ylab)+
        theme_bw() +
        theme(plot.title = element_text(size = 14),
              plot.subtitle = element_text(size = 10), axis.text.x = element_text(size = xaxis_size))


    g

}

