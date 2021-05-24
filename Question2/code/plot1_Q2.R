
##################################################
############# Plot 1 Q2 ####################
##################################################


plot1_Q2 <- function(df, title, Xlab, Ylab){

    df_use <- df %>%
        mutate(Common = ifelse(grepl(pattern = "John|Mike|Michael|James|Bill", x = Name), 1, 0),
               Family = ifelse(grepl(pattern = "family", x = Name), 1, 0)) %>%
        summarise(Type = ifelse(Common==1, "Common", ifelse(Family==1, "Family", "Neither"))) %>%
        group_by(Type) %>%
        summarise(Counts = n())

    g1 <- ggplot(df_use, aes(x = Type, y = Counts)) +
        geom_bar(fill = "#0073C2FF", stat = "identity") +
        geom_text(aes(label = Counts), vjust = -0.3) +
        theme_bw()+
        labs(title = title,
             x = Xlab,
             y = Ylab)

    g1


}





