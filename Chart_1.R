library(dplyr)
library(ggplot2)
libdata <- read.csv("2017-2023-10-Checkouts-SPL-Data.csv")
C1 <- libdata %>%
  filter(MaterialType %in% c("EBOOK", "AUDIOBOOK", "BOOK", "VIDEODISC"))

C1 <- C1 %>%
  group_by(MaterialType, CheckoutYear) %>%
  summarize(sum_checkouts = sum(Checkouts))

Chart1 <- ggplot(C1, aes(x = CheckoutYear, y = sum_checkouts, color = MaterialType)) +
  geom_line() +
  scale_color_discrete(name = "MaterialType") +
  labs(title = "Checkouts Over Time by Material Type") +
  xlab("Checkout Year") +
  ylab("Sum of Checkouts")