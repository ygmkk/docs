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
