libdata <- read.csv("2017-2023-10-Checkouts-SPL-Data.csv")

Value1 <- libdata %>% filter(CheckoutMonth == "8", na.rm = TRUE) %>% summarize(mean(Checkouts))

Value2 <- libdata[which.max(libdata$Checkouts), "CheckoutMonth"]

Value3 <- libdata[which.min(libdata$Checkouts), "CheckoutMonth"]

Value4 <- libdata %>% filter(CheckoutMonth == "8", na.rm = TRUE) %>% filter(Checkouts == max(Checkouts)) %>% summarize(sum_material_type = max(MaterialType))

Value5 <- libdata %>% filter(Checkouts == max(Checkouts)) %>% summarize(sum_material_type = max(MaterialType))
