library(ggplot2)
source('getEmissionData.R')

#png("plot5.png", width=840, height=480)
g <- ggplot(baltimore.onRoadEmissions, aes(factor(year), Emissions)) +
  geom_bar(stat="identity") +
  theme_light() +
  xlab("Year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Motor Vehicle Emissions in Baltimore City, Maryland between 1999 to 2008')
print(g)
#dev.off()