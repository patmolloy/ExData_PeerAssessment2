NEI <- readRDS("./data/summarySCC_PM25.rds") # read data
SCC <- readRDS("./data/Source_Classification_Code.rds") # read data

Totals <- aggregate(Emissions ~ year,NEI, sum) # sum Emissions within year using aggregate function

png("plot1.png", width=480, height=480)


barplot(
  (Totals$Emissions)/1e6,
  names.arg=aggTotals$year,
  xlab="Year",
  ylab="PM2.5 Emissions (Millions of Tons)",
  main="Total PM2.5 Emissions From All US Sources",
  col = "red"
)

dev.off()
