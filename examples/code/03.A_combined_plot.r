library(ggplot2)


# Part A ------------------------------------------------------------------


dat1 = readRDS("examples/data/figure1_A.Rdata")

(p_A = ggplot(dat1, aes(x = defi_year, y = Incidence, fill = disease_type_en)) +
    geom_area() + 
    scale_fill_manual(values =c('#D30f8C', '#6B58A6','#FCAF17',  '#0871B9', '#00B3B1'))  +
    scale_x_continuous(expand = c(0, 0)) +
    scale_y_continuous(expand = c(0, 0)) +
    labs(x = 'Year', fill = 'Disease Type', tag = '(A)')+
    theme_classic() +
    theme(legend.position = 'top')+
    guides(fill=guide_legend(ncol=3))+
    theme(axis.text.x = element_text(size = 12, hjust = 0.7),axis.text.y = element_text(size = 12)))

# Part B ------------------------------------------------------------------


dat2 = readRDS("examples/data/figure1_B.Rdata")

dis_color = c("#D30f8C", "#D30f8C", "#D30f8C", "#D30f8C", "#D30f8C", "#D30f8C", 
              "#D30f8C", "#D30f8C", "#D30f8C", "#D30f8C", "#D30f8C", "#D30f8C", 
              "#D30f8C", "#D30f8C", "#D30f8C", "#D30f8C", "#D30f8C", "#D30f8C", 
              "#D30f8C", "#D30f8C", "#D30f8C", "#6B58A6", "#6B58A6", "#6B58A6", 
              "#6B58A6", "#6B58A6", "#6B58A6", "#6B58A6", "#6B58A6", "#6B58A6", 
              "#6B58A6", "#6B58A6", "#6B58A6", "#FCAF17", "#FCAF17", "#FCAF17", 
              "#FCAF17", "#FCAF17", "#FCAF17", "#FCAF17", "#FCAF17", "#FCAF17", 
              "#FCAF17", "#FCAF17", "#0871B9", "#0871B9", "#0871B9", "#0871B9", 
              "#0871B9", "#0871B9", "#0871B9", "#00B3B1", "#00B3B1", "#00B3B1", 
              "#00B3B1", "#00B3B1", "#00B3B1", "#00B3B1")

(p_B = ggplot(dat2,aes(y = label, x = year_month, fill = Incidence2)) +
    geom_tile() + 
    scale_fill_gradient(high = '#FF0000', low = 'white', limits = c(0, 1))+
    labs(fill = 'Standarded Incidence', y = 'Disease name', x = 'Year', tag = "(B)") +
    theme(axis.text.x = element_text(angle = 0, vjust = 0.3, hjust = 0.1),axis.text.y = element_text(color = rev(dis_color), size = 12-4)) +
    geom_vline(xintercept = seq(from = 12.5, length.out = 4, by = 12), linetype = 'dashed') +
    theme(axis.line = element_line(linetype = 'solid'),panel.border = element_rect(color = 'grey', fill = NA), axis.ticks.x = element_blank(),axis.text.x = element_text(color = 'black'))+
    scale_x_discrete(labels =c(rep('',5),  2014,rep('',11), 2015, rep('',11), 2016, rep('',11), 2017, rep('',11), 2018, rep('',6))) +
    theme(legend.position = 'top') +
    theme(axis.title = element_text(size = 12),axis.text.x = element_text(size = 12))) 

# Part C ------------------------------------------------------------------


dat3 = readRDS("examples/data/figure1_C.Rdata")

colormap=c("#FFFFD9", "#EFF8B5", "#CFECB3", "#97D6B8", "#5CC0C0", "#30A5C2", 
           "#1E80B8", "#2254A3", "#21318D", "#081D58")

(p_C = ggplot(dat3,aes(x = defi_month, y = defi_year, fill = Incidence2)) +
    geom_tile(color = 'black') + 
    facet_wrap(vars(disease_type_en), nrow = 1, ncol = 5)+
    coord_polar()+
    scale_fill_gradientn(colours=colormap) +
    labs(tag = '(C)', fill = 'Standarded Incidence', x = 'Month', y = "Year") +
    scale_x_continuous( breaks=seq(from = 1, to = 12, length.out = 12)) +
    theme_classic()+
    theme(plot.margin=unit(c(-4,0.5,-4,-0), "cm")) +
    theme(legend.position = 'bottom') +
    theme(axis.text = element_text(size = 12),axis.title = element_text(size = 12),strip.text = element_text(size = 12)))


# Combine multiple figures ------------------------------------------------------------


library(patchwork)
(combined_plot = (p_A+p_B)/p_C)

