* 查找并递归删除文件
> find . -name '.settings'|xargs rm -r
* 获取OS PAGESIZE
> getconf PAGESIZE
* 统计git 文件
> git log --stat --author='qpyang' --pretty=tformat: --since ==2019-11-01 --until=2019-12-15 --numstat|grep .*.java$ | awk '{s[$3] += ($1+$2) }END{ j=0; total=0; for(i in s){ j++; print j, "、[", i, "]", ",代码变更", s[i], "行";total += s[i] }  print total; }'
> git log
> git log --author="gmyang"
> git show 575fae --stat
> git log --stat --author='qpyang' --pretty=tformat: --since ==2019-11-01 --until=2019-12-15 --numstat|grep .*.java$ | awk '{s[$3] += ($1+$2) }END{ j=0; total=0; for(i in s){ j++; print j, "、[", i, "]", ",代码变更", s[i], "行";total += s[i] }  print total; }

* git settings
> git config --list
> git config --get-all
> git config -l
> git config --global user.name "杨光明"
> 156  git config --global user.email "gmyang@xxx.com"
> 162  git config http.sslVerify "false"
> 163  env GIT_SSL_NO_VERIFY=true git clone https://gmyang@xxx.git
> 164  git config --global http.sslVerify "false"

* git 查看提交信息
> git log -h
> git show 575fae --stat

* git 创建分支
> git checkout -b modmic-jdk6 origin/modmic-jdk6

> git branch -vv

* 使用Guice的著名开源项目：
> 1.Presto 
.Presto是 Facebook 推出的一个基于Java开发的大数据分布式 SQL 查询引擎，可对从数 G 到数 P 的大数据进行交互式的查询，
查询的速度达到商业数据仓库的级别，据称该引擎的性能是 Hive 的 10 倍以上。
2.Azkaban
Azkaban是由Linkedin开源的一个批量工作流任务调度器。用于在一个工作流内以一个特定的顺序运行一组工作和流程。Azkaban定义了一种
KV文件格式来建立任务之间的依赖关系，并提供一个易于使用的web用户界面维护和跟踪你的工作流.
3.ElasticSearch
