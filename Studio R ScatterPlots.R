#lesson 8 - Scatter Plots
library(ggplot2)

#faithful - plot eruptions times vs waiting times
d<-ggplot(faithful, aes(x=eruptions, y=waiting))
d+geom_point()

#scatterplot with title and axis labels
d+geom_point()+ggtitle("Old Faithful Eruption vs Waiting Times")+xlab("Eruption Time (min)")+ylab("Waiting Time (min")

#scatterplot with data fit with a straight line with a "best fit line" (stategically fit placed data plots)
d+geom_point()+geom_smooth(method=lm)

#scatterplot with the grey shading removed
d+geom_point()+geom_smooth(method=lm, se=FALSE)

#scotterplots with different colors
d+geom_point()+geom_smooth(method=lm, se=FALSE, color="goldenrod2")