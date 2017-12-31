anaconda <- read.table("anaconda.dat")
head(anaconda)


# v1 довжина, sm
# v2 вага, kg


theme_xkcd <- theme(
  panel.background = element_rect(fill="white"),
  #axis.ticks = element_line(colour=NA),
  #panel.grid = element_line(colour="blue", size=3),
  axis.text.y = element_text(colour="grey"),
  axis.text.x = element_text(colour="grey"),
  axis.title.y = element_text(colour="grey"),
  title = element_text(colour="grey"),
  text = element_text(size=16, family="Comic Sans MS")
)


dbinom(4, 10, 0.9)


library(ggplot2)
# boxplot example
p <- ggplot() + geom_boxplot(aes(x=1, y=V1), data=anaconda, col="lightblue") +
  coord_flip() + ylab('Довжина анаконди(см)') + xlab('')+
  theme_xkcd
p

# linear regression example

str(anaconda)
p <- ggplot(data=anaconda, aes(x=V1, y=V2)) + geom_point(col="lightblue", size=3) +   
  geom_smooth(method='lm', linetype="dashed", se=FALSE) + 
  #geom_abline(slope=0.3, intercept = -52, linetype="dashed", col= "steelblue") +
  #geom_abline(slope=0.2, intercept = -51, linetype="dashed", col= "steelblue") +
  xlab('Довжина') + ylab('Вага') + theme_xkcd
p




p <- ggplot(data=anaconda, aes(x=V1, y=V2)) + geom_point(col="lightblue", size=3) +   
  geom_smooth(method='lm', linetype="dashed", se=FALSE) + 
  xlim(c(0, 600)) +
  xlab('Довжина') + ylab('Вага') + theme_xkcd
p

cor(anaconda$V1, anaconda$V2)

fit = lm(anaconda$V2 ~ anaconda$V1)
summary(fit)

plot(fit)


y = 0.253*x - 50.73

# f_anaconda <- anaconda[anaconda$V3 == 'F', ]
# m_anaconda <- anaconda[anaconda$V3 == 'M', ]
# hist(f_anaconda$V1)
# hist(m_anaconda$V1)
# 
# 
# plot(anaconda$V1, anaconda$V2)
# cor(anaconda$V1, anaconda$V2)

p <- ggplot(data=anaconda, aes(x=V1, y=V2)) + geom_point(col="lightblue", size=3) +   
  xlab('Довжина, см') + ylab('Вага') + theme_xkcd
p

cor(anaconda$V1, anaconda$V2)

p <- ggplot(data=anaconda, aes(x=V1/100, y=V2)) + geom_point(col="lightblue", size=3) +   
  xlab('Довжина, м') + ylab('Вага') + theme_xkcd
p

p <- ggplot(data=anaconda, aes(x=V2, y=V1)) + geom_point(col="lightblue", size=3) +   
  ylab('Довжина, м') + xlab('Вага') + theme_xkcd
p

head(anaconda)
str(anaconda)

new_big_anaconda = data.frame(V1=521.0, V2=20.0, V3="F")
out_anaconda <- rbind(anaconda, new_big_anaconda)
str(out_anaconda)


p <- ggplot(data=out_anaconda, aes(x=V1, y=V2)) + geom_point(col="lightblue", size=3) + 
  geom_point(data=new_big_anaconda,  aes(x=V1, y=V2), colour="red") +
  #geom_text(data=new_big_anaconda, label="викид", vjust=1) +
  xlab('Довжина, см') + ylab('Вага') + theme_xkcd
p

cor(out_anaconda$V1, out_anaconda$V2)

ggplot(data=df, aes(x=seq(1:n), y=mean)) + geom_point(col='lightblue') + 
  geom_hline(aes(yintercept=p), linetype="dashed", col="red") +
  xlab('кількість спроб') + ylab('p') + theme_xkcd

