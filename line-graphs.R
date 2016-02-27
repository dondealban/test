# This R script generates line graphs using ggplot2 package.
# The aim of generating the graphs is to visualise the misclassification error rates
# at each classification level grouped into either cases or year of data acquisition. 
# The error rates are the results of the decision tree classification using tree package. 
#
# Script By:      Jose Don T. De Alban
# Date Created:   26 Feb 2016
# Last Modified:  26 Feb 2016 

# Set working directory
# Note: Need to change the path name
setwd("/Users/dondealban/Image Processing/Thesis/R/4 tree classification/")

# Load the required R libraries
library(ggplot2)

# Read data, define variables, and store data in variables
odata <- read.csv(file="Misclassification-Errors-Overfitted.csv", header=TRUE, sep=",") # overfitted tree data
pdata <- read.csv(file="Misclassification-Errors-Pruned.csv", header=TRUE, sep=",")     # pruned tree data

# Create subsets of the raw data
# Overfitted trees per case
odata.c1 <- subset(odata, subset=(Case=="Case 1"))
odata.c2 <- subset(odata, subset=(Case=="Case 2"))
odata.c3 <- subset(odata, subset=(Case=="Case 3"))
odata.c4 <- subset(odata, subset=(Case=="Case 4"))
odata.c5 <- subset(odata, subset=(Case=="Case 5"))
odata.c6 <- subset(odata, subset=(Case=="Case 6"))
odata.c7 <- subset(odata, subset=(Case=="Case 7"))
odata.c8 <- subset(odata, subset=(Case=="Case 8"))
# Overfitted trees per year
odata.07 <- subset(odata, subset=(Year=="2007"))
odata.08 <- subset(odata, subset=(Year=="2008"))
odata.09 <- subset(odata, subset=(Year=="2009"))
odata.10 <- subset(odata, subset=(Year=="2010"))
# Pruned trees per case
pdata.c1 <- subset(pdata, subset=(Case=="Case 1"))
pdata.c2 <- subset(pdata, subset=(Case=="Case 2"))
pdata.c3 <- subset(pdata, subset=(Case=="Case 3"))
pdata.c4 <- subset(pdata, subset=(Case=="Case 4"))
pdata.c5 <- subset(pdata, subset=(Case=="Case 5"))
pdata.c6 <- subset(pdata, subset=(Case=="Case 6"))
pdata.c7 <- subset(pdata, subset=(Case=="Case 7"))
pdata.c8 <- subset(pdata, subset=(Case=="Case 8"))
# Pruned trees per year
pdata.07 <- subset(pdata, subset=(Year=="2007"))
pdata.08 <- subset(pdata, subset=(Year=="2008"))
pdata.09 <- subset(pdata, subset=(Year=="2009"))
pdata.10 <- subset(pdata, subset=(Year=="2010"))

# Generate line graphs for overfitted classification trees per case

# Case 1
oc1 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=odata.c1)
oc1 <- oc1 + labs(title="Error Rates per Classification Level\n[Case 1: Polarisation]", x="Classification Level", y="Error Rate (%)", colour="Year")
oc1 <- oc1 + ylim(0,50)
# Case 2
oc2 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=odata.c2)
oc2 <- oc2 + labs(title="Error Rates per Classification Level\n[Case 2: Polarisation + Topographic]", x="Classification Level", y="Error Rate (%)", colour="Year")
oc2 <- oc2 + ylim(0,50)
# Case 3
oc3 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=odata.c3)
oc3 <- oc3 + labs(title="Error Rates per Classification Level\n[Case 3: Polarisation + Geometry]", x="Classification Level", y="Error Rate (%)", colour="Year")
oc3 <- oc3 + ylim(0,50)
# Case 4
oc4 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=odata.c4)
oc4 <- oc4 + labs(title="Error Rates per Classification Level\n[Case 4: Polarisation + Texture]", x="Classification Level", y="Error Rate (%)", colour="Year")
oc4 <- oc4 + ylim(0,50)
# Case 5
oc5 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=odata.c5)
oc5 <- oc5 + labs(title="Error Rates per Classification Level\n[Case 5: Polarisation + Topographic + Geometry]", x="Classification Level", y="Error Rate (%)", colour="Year")
oc5 <- oc5 + ylim(0,50)
# Case 6
oc6 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=odata.c6)
oc6 <- oc6 + labs(title="Error Rates per Classification Level\n[Case 6: Polarisation + Topographic + Texture]", x="Classification Level", y="Error Rate (%)", colour="Year")
oc6 <- oc6 + ylim(0,50)
# Case 7
oc7 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=odata.c7)
oc7 <- oc7 + labs(title="Error Rates per Classification Level\n[Case 7: Polarisation + Geometry + Texture]", x="Classification Level", y="Error Rate (%)", colour="Year")
oc7 <- oc7 + ylim(0,50)
# Case 8
oc8 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=odata.c8)
oc8 <- oc8 + labs(title="Error Rates per Classification Level\n[Case 8: Polarisation + Topographic + Geometry + Texture]", x="Classification Level", y="Error Rate (%)", colour="Year")
oc8 <- oc8 + ylim(0,50)

# Generate line graphs for overfitted classification trees per year

# 2007
oy07 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Case, colour=factor(Case)), data=odata.07)
oy07 <- oy07 + labs(title="Error Rates per Classification Level for 2007 Data", x="Classification Level", y="Error Rate (%)", colour="Case")
oy07 <- oy07 + ylim(0,50)
# 2008
oy08 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Case, colour=factor(Case)), data=odata.08)
oy08 <- oy08 + labs(title="Error Rates per Classification Level for 2008 Data", x="Classification Level", y="Error Rate (%)", colour="Case")
oy08 <- oy08 + ylim(0,50)
# 2009
oy09 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Case, colour=factor(Case)), data=odata.09)
oy09 <- oy09 + labs(title="Error Rates per Classification Level for 2009 Data", x="Classification Level", y="Error Rate (%)", colour="Case")
oy09 <- oy09 + ylim(0,50)
# 2010
oy10 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Case, colour=factor(Case)), data=odata.10)
oy10 <- oy10 + labs(title="Error Rates per Classification Level for 2010 Data", x="Classification Level", y="Error Rate (%)", colour="Case")
oy10 <- oy10 + ylim(0,50)

# Generate line graphs for pruned classification trees per case

# Case 1
pc1 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=pdata.c1)
pc1 <- pc1 + labs(title="Error Rates per Classification Level\n[Case 1: Polarisation]", x="Classification Level", y="Error Rate (%)", colour="Year")
pc1 <- pc1 + ylim(0,50)
# Case 2
pc2 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=pdata.c2)
pc2 <- pc2 + labs(title="Error Rates per Classification Level\n[Case 2: Polarisation + Topographic]", x="Classification Level", y="Error Rate (%)", colour="Year")
pc2 <- pc2 + ylim(0,50)
# Case 3
pc3 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=pdata.c3)
pc3 <- pc3 + labs(title="Error Rates per Classification Level\n[Case 3: Polarisation + Geometry]", x="Classification Level", y="Error Rate (%)", colour="Year")
pc3 <- pc3 + ylim(0,50)
# Case 4
pc4 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=pdata.c4)
pc4 <- pc4 + labs(title="Error Rates per Classification Level\n[Case 4: Polarisation + Texture]", x="Classification Level", y="Error Rate (%)", colour="Year")
pc4 <- pc4 + ylim(0,50)
# Case 5
pc5 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=pdata.c5)
pc5 <- pc5 + labs(title="Error Rates per Classification Level\n[Case 5: Polarisation + Topographic + Geometry]", x="Classification Level", y="Error Rate (%)", colour="Year")
pc5 <- pc5 + ylim(0,50)
# Case 6
pc6 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=pdata.c6)
pc6 <- pc6 + labs(title="Error Rates per Classification Level\n[Case 6: Polarisation + Topographic + Texture]", x="Classification Level", y="Error Rate (%)", colour="Year")
pc6 <- pc6 + ylim(0,50)
# Case 7
pc7 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=pdata.c7)
pc7 <- pc7 + labs(title="Error Rates per Classification Level\n[Case 7: Polarisation + Geometry + Texture]", x="Classification Level", y="Error Rate (%)", colour="Year")
pc7 <- pc7 + ylim(0,50)
# Case 8
pc8 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Year, colour=factor(Year)), data=pdata.c8)
pc8 <- pc8 + labs(title="Error Rates per Classification Level\n[Case 8: Polarisation + Topographic + Geometry + Texture]", x="Classification Level", y="Error Rate (%)", colour="Year")
pc8 <- pc8 + ylim(0,50)

# Generate line graphs for pruned classification trees per year

# 2007
py07 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Case, colour=factor(Case)), data=pdata.07)
py07 <- py07 + labs(title="Error Rates per Classification Level for 2007 Data", x="Classification Level", y="Error Rate (%)", colour="Case")
py07 <- py07 + ylim(0,50)
# 2008
py08 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Case, colour=factor(Case)), data=pdata.08)
py08 <- py08 + labs(title="Error Rates per Classification Level for 2008 Data", x="Classification Level", y="Error Rate (%)", colour="Case")
py08 <- py08 + ylim(0,50)
# 2009
py09 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Case, colour=factor(Case)), data=pdata.09)
py09 <- py09 + labs(title="Error Rates per Classification Level for 2009 Data", x="Classification Level", y="Error Rate (%)", colour="Case")
py09 <- py09 + ylim(0,50)
# 2010
py10 <- ggplot() + geom_line(aes(y=ErrorRate, x=Level, group=Case, colour=factor(Case)), data=pdata.10)
py10 <- py10 + labs(title="Error Rates per Classification Level for 2010 Data", x="Classification Level", y="Error Rate (%)", colour="Case")
py10 <- py10 + ylim(0,50)

# Output line graphs to a PDF file

# Overfitted trees per case
ggsave(oc1, file="graph-overfit-case1.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(oc2, file="graph-overfit-case2.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(oc3, file="graph-overfit-case3.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(oc4, file="graph-overfit-case4.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(oc5, file="graph-overfit-case5.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(oc6, file="graph-overfit-case6.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(oc7, file="graph-overfit-case7.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(oc8, file="graph-overfit-case8.pdf", width=7, height=5.5, units="in", dpi=300)
# Overfitted trees per year
ggsave(oy07, file="graph-overfit-2007.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(oy08, file="graph-overfit-2008.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(oy09, file="graph-overfit-2009.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(oy10, file="graph-overfit-2010.pdf", width=7, height=5.5, units="in", dpi=300)
# Pruned trees per case
ggsave(pc1, file="graph-pruned-case1.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(pc2, file="graph-pruned-case2.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(pc3, file="graph-pruned-case3.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(pc4, file="graph-pruned-case4.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(pc5, file="graph-pruned-case5.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(pc6, file="graph-pruned-case6.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(pc7, file="graph-pruned-case7.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(pc8, file="graph-pruned-case8.pdf", width=7, height=5.5, units="in", dpi=300)
# Pruned trees per year
ggsave(py07, file="graph-pruned-2007.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(py08, file="graph-pruned-2008.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(py09, file="graph-pruned-2009.pdf", width=7, height=5.5, units="in", dpi=300)
ggsave(py10, file="graph-pruned-2010.pdf", width=7, height=5.5, units="in", dpi=300)
