library(ggplot2)

C3 <- libdata %>%
  filter(UsageClass %in% c("Physical", "Digital")) %>%
  group_by(UsageClass, CheckoutYear) %>%
  summarize(Count = n()) %>%
  mutate(Prop = Count / sum(Count))

Chart3 <- ggplot(C3, aes(x = CheckoutYear, y = Prop, fill = UsageClass)) +
  geom_area() +
  scale_fill_manual(values = c("#9FDBF0", "#FF7F50")) +
  labs(title = "Proportion of Checkouts by Different Usage Class and Year", x = "Year", y = "Proportion of Checkouts") 