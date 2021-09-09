# 10ynews
* 10년 전 오늘 뉴스
* **역사를 잊은 민족에게 미래는 없다** - 단재 신채호
## Build & Run
```
git clone https://github.com/kenu/10ynews
cd 10ynews/web
npm i
npm start
```
* http://localhost:3010

## License
* [MIT](https://github.com/kenu/10ynews/blob/main/LICENSE)

## EC2 install
* AMI Linux 2 instance with 80 port open in Security Group
* First install env with git, node.js16, nginx
* `curl -L https://raw.githubusercontent.com/kenu/10ynews/main/sh/install-env.sh | sh`
* Open instance public ip in browser
