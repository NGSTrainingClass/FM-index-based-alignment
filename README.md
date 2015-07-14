# FM-index-based-alignment
##简介
这个project目的是完成基于FM-index索引的DNA序列比对系统。
这个系统由Align程序和Index程序两部分组成。

Index程序要完成以下步骤：

1. 从data目录下读入Reference.fa文件,
2. 对Reference的序列构建FM-index索引,
3. 把索引写入硬盘。

Align程序要完成以下步骤：

1. 从硬盘读入索引;
2. 从data目录下读入Reads.fq文件;
3. 对Reads.fq文件中的每条在索引上进行比对, 并输出比对结果。

##目录结构

结构如下所示：
├── bin
├── data
│   ├── Reads.fq
│   ├── Reads.sam
│   └── Reference.fa
├── LICENSE
├── Makefile
├── README.md
└── src
    ├── align.c
    └── index.c
  
  其中bin用来存放执行文件。
  data目录存放数据文件,其中Reads.fq为测序序列文件，Reference.fq为参考基因组文件, Result.sam为比对结果文件。
  src目录存放源码文件, 我们的要求就是修改align.c和index.c。
  Makefile用来编译,在终端输入:make命令就会自动编译。
##要求
1. 在Linux系统环境下， 用Makefile组织工程, C编写程序。
2. 生成SA和解析fasta、fastq文件可以用已有的库, 也可自己实现。
3. 输出结果要以SAM文件格式输出。 
