
s <- split(q$EMISSIONS, q$STATE_ABBR)
var <- lapply(s,sum)
table <- as.data.frame(var)
table1<- data.frame(STATE_ABBR= colnames(table),TOTAL_EMISSIONS=as.numeric(table[1,]))
g=ggplot(data=table1,aes(STATE_ABBR,TOTAL_EMISSIONS))
g+ geom_point(aes(color=TOTAL_EMISSIONS))+labs(title="statewise total emissions in us for year 2008", x= "state abbreviation", y="total emissions")