#creates plots of chloroplast and mitochondria genome size from table created by 'tablecode'
mc1 <-ggplot(data = mitovsplastid_3, aes(x = Genome, y =X.Genome.length.mito., colour = "X.Genome.length.mito.")) + geom_point() +xlab('Groups') + 
    ylab('Molecular Length (nt)') +
    #title of the plot
    labs(title = 'Mitochondrial Length vs Chloroplast Length within different organisms')+ 
    geom_point(data = mitovsplastid_3,aes(x = Genome, y = X.Genome.length.plastid, colour = "X.Genome.length.plastid"))+
    theme(axis.text = element_text(angle=90,hjust=1,vjust=0.5))+
    scale_colour_manual("", 
                        breaks = c("X.Genome.length.plastid","X.Genome.length.mito."),
                        values = c("red","blue")) +
    geom_smooth(aes(x = Genome, y = X.Genome.length.mito., colour = "X.Genome.length.mito."))+
    geom_smooth(aes(x = Genome, y = X.Genome.length.plastid, colour = "X.Genome.length.plastid"))
#scales of axises 
library(scales)
mc1 + scale_y_continuous(labels = scientific)
mc1 +  scale_y_log10(breaks = trans_breaks("log10", function(x) 10^x),
                     labels = trans_format("log10", math_format(10^.x)))