rm(list = ls())  #清空环境


#更新R语言版本
install.packages("stringr")
install.packages("installr")
library(stringr)          #启动installr包需要调用stringr
library(installr)
#updateR()   #运行即可将R更新为最新版本，但之前安装过的包需要重新下载


#路径读取与设置
getwd()      #获取当前工作路径
#setwd("...file/document/...")      #设置路径


#在CRAN上下载包--以dplyr包为例
install.packages("dplyr")


#GitHub上下载包--以BPST包为例
install.packages("devtools") 
library(devtools) 
help(package = "devtools")
#install_github("funstatpackages/BPST") 
#试验发现存在问题，需要安装Rtools，这里仅作为形式展示


#包名：函数名
BPST::baisi()


#GitHub上下载包--以nCov2019包为例
install.packages("remotes")
library("remotes")
remotes::install_github("GuangchuangYu/nCov2019") #需要R版本3.6.0以上
library(nCov2019)
x <- load_nCov2019()
x$data       #提取x中元素data
x$province
x$global
trans_city("武汉" , lang = "zh") #翻译


#包的管理
sessionInfo()       #查找R版本、操作系统版本、加载的包
.libPaths()         #软件包安装路径
head(installed.packages())     #展示已经安装的包
#remove.packages("PACKAGE")    #删除包：PACKAGE为包的名称，如dplyr
update.packages(ask = F)       #更新全部包
library(help = "nCov2019")     #查看包中所有函数与相关信息（以nCov2019为例）
help(package = "nCov2019")     #查看包中可用的函数（以nCov2019为例）


#帮助文档--以integrate为例
?integrate                #查看帮助
help("integrate")         #查看帮助
edit(integrate)           #编辑integrate的源代码
body(integrate)           #integrate函数的源代码
formals(integrate)        #变量名称
environment(integrate)    #变量所在位置


#快速观察函数
install.packages(Deriv)    #用于进行求导运算
library(Deriv)
?deriv                    
body(deriv)               #函数代码
formals(deriv)            #形式参数列表
environment(deriv)        #变量所在位置
dx<-deriv(y~ 3+10*x,"x",func = TRUE)  # 以函数形式生成导数公式
dx(1)               # 传入自变量，并计算函数在1处的函数值与导函数值

library(help = "mcb")