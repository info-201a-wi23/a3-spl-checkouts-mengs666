C2 <- libdata %>% 
  group_by(CheckoutMonth) %>% 
  summarise(Checkouttimes = sum(Checkouts))

Chart2 <- ggplot(data = C2, aes(x = CheckoutMonth, y = Checkouttimes, fill = CheckoutMonth)) +
  geom_bar(stat = "identity") +
  scale_x_continuous(breaks = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), 
                     labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", 
                                "Jul", "Aug", "Sep", "Oct","Nov", "Dec")) +
  labs(title = "Check Out Times of Each Month", x = "Month", y = "Number of Checkouts")
