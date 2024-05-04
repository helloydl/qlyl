#!/usr/bin/env bash
#

# 青龙一键安装脚本
TIME() {
[[ -z "$1" ]] && {
	echo -ne " "
} || {
     case $1 in
	r) export Color="\e[31;1m";;
	g) export Color="\e[32;1m";;
	b) export Color="\e[34;1m";;
	y) export Color="\e[33;1m";;
	z) export Color="\e[35;1m";;
	l) export Color="\e[36;1m";;
      esac
	[[ $# -lt 2 ]] && echo -e "\e[36m\e[0m ${1}" || {
		echo -e "\e[36m\e[0m ${Color}${2}\e[0m"
	 }
      }
}
echo
echo
echo
TIME l "安装依赖..."
echo
TIME y "安装依赖需要时间，请耐心等待!"
echo
sleep 3
echo
echo
npm config set registry https://registry.npmmirror.com
cd /ql/data
TIME l "安装依赖npm..."
npm install -g npm
cd /ql/data
TIME l "安装依赖png-js..."
npm install -g png-js
cd /ql/data
TIME l "安装依赖date-fns..."
npm install -g date-fns
cd /ql/data
TIME l "安装依赖axios..."
npm install -g axios
cd /ql/data
TIME l "安装依赖crypto-js..."
npm install -g crypto-js
cd /ql/data
TIME l "安装依赖md5..."
npm install -g md5
cd /ql/data
TIME l "安装依赖ts-md5..."
npm install -g ts-md5
cd /ql/data
TIME l "安装依赖tslib..."
npm install -g tslib
cd /ql/data
TIME l "安装依赖@types/node..."
npm install -g @types/node
cd /ql/data
TIME l "安装依赖requests..."
npm install -g requests
cd /ql/data
TIME l "安装依赖tough-cookie..."
npm install -g tough-cookie
cd /ql/data
TIME l "安装依赖jsdom..."
npm install -g jsdom
cd /ql/data
TIME l "安装依赖download..."
npm install -g download
cd /ql/data
TIME l "安装依赖tunnel..."
npm install -g tunnel
cd /ql/data
TIME l "安装依赖fs..."
npm install -g fs
cd /ql/data
TIME l "安装依赖ws..."
npm install -g ws
cd /ql/data
TIME l "安装依赖form-data..."
npm install -g form-data
cd /ql/data
TIME l "安装依赖requests..."
pip3 install requests
cd /ql/data
TIME l "安装依赖PyExecJS..."
pip3 install PyExecJS
cd /ql/data
TIME l "安装依赖moment..."
npm install -g moment
cd /ql/data
TIME l "安装依赖js-base64..."
npm install -g js-base64
cd /ql/data
TIME l "安装依赖..."
cd /ql/data/scripts/ && apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev && npm i && npm i -S ts-node typescript @types/node date-fns axios png-js canvas --build-from-source
cd /ql/data
TIME l "安装依赖..."
apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev && cd scripts && npm install canvas --build-from-source
cd /ql/data
TIME l "安装依赖..."
apk add python3 zlib-dev gcc jpeg-dev python3-dev musl-dev freetype-dev
cd /ql/data
echo
TIME g "依赖安装完毕..."
echo
exit 0
