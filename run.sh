domain="$1"

# 各自命令定制
oneforall="python3 ./OneForAll/oneforall.py --target ${domain} run"
relay="cat ./OneForAll/results/${domain}.csv |awk -F , '{print"
relay1="6}' > result.txt"
bscan="./bscan -target result.txt"


# 脚本开始
printf "=>>= 开始时间:`date` \n"

res=$oneforall
res1=$relay'$'$relay1'|'$bscan

if [ ${domain} ];then
    printf "=>>= 开始爬取子域名...请稍等...... \n"
    eval $res
    eval $res1
else
    printf "\n"
    printf "=!!= 格式错误，脚本已经退出,请先输入查询的域名.\n"
    exit 1
fi

# End