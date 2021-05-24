###################
### Plot 2 ########
###################

Boxplot_Q1 <- function(df, Title, Subtitle, Caption,
                       Ylab, Xlab){

    df_use <- df %>%
        select(Profitability, `Lead Studio`) %>%
        mutate(LeadStudio = as.factor(`Lead Studio`)) %>%
        filter(Profitability<60)


    g1 <- ggplot(df_use) +
        geom_boxplot(aes(x = LeadStudio, y = Profitability, fill = LeadStudio), alpha = 0.3) +
        geom_jitter(aes(x = LeadStudio, y = Profitability, color = LeadStudio, alpha = 0.3)) +
        theme_bw() +
        guides(color = FALSE, fill = FALSE, alpha = FALSE) +
        # Add titles:
        labs(title = Title,
             subtitle = Subtitle,
             caption = Caption,
             x = Xlab, y = Ylab) +
        scale_color_npg() +
        scale_fill_npg() +
        theme(axis.text.x = element_text(angle = 90, hjust = 1))

    g1


}







