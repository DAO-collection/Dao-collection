## DAO atlas
+ 构建于https://github.com/izghua/go-blog 基础之上
+ 为DAO atlas website 提供基础的文章、栏目和用户管理。
+ 未来不断迭代，增加新功能

### 技术栈
+ Go（Gin）
+ redis
+ mysql
+ vue（前端）
>   - 后端代码是基于`golang`的`gin`框架封装成的一个自用的包  [https://github.com/izghua/zgh](https://github.com/izghua/zgh)
>   - 后台代码是基于`vue`的`iview`UI组件开发的后台, [https://github.com/izghua/go-blog-backend](https://github.com/izghua/go-blog-backend)
>   - 前台是基于`HTML+CSS`
>   - 缓存用的`redis`
>   - 数据库用的是 `MySQL`
>   - 配置文件用的 `yaml`
> 
### 主要功能有:

1. 文章发布和修改
2. 文章回收站和撤回
3. 文章分类
4. 文章标签
5. 网站信息自由设置
6. 文章支持markdown
7. ★ 网站静态文件可自由配置`本地`或 `CDN`
8. ★ 可上传图片,可选择上传至`服务器`或 `七牛` 或 `两者同时`
9. 自由添加友链和管理友链顺序
10. 采用`github`的`issue`功能作为评论系统,界面优美且方便其他用户留言和通知

### how to run on local?
+ get vscode, clone this repo
+ install go, mysql, redis on local
+ run common/sql_dao_collection.sql on local mysql( usually with mysqlworkbench)
+ go run main.go
+ [backend url](http://127.0.0.1:8081/backend/login)
```
[GIN-debug] Listening and serving HTTP on :8081
```
+ [后台](http://127.0.0.1:8081/backend/home)
+ [网站](http://127.0.0.1:8081/)
+ username: a@ab3a.net
+ password: 123456
### most errors
+ 
```
./dev-server-run.sh
go: github.com/qiniu/x@v7.0.8+incompatible: reading github.com/qiniu/x/go.mod at revision v7.0.8: unknown revision v7.0.8
```
+ 
```
go list -m -json -versions github.com/qiniu/x@latest
```

```
add to .zshrc to download the go mod

# Enable the go modules feature
export GO111MODULE=on
# Set the GOPROXY environment variable
export GOPROXY=https://goproxy.io
```

#### backpup scripts

```
o restart redis after an upgrade:
  brew services restart redis
Or, if you don't want/need a background service you can just run:
  /usr/local/opt/redis/bin/redis-server /usr/local/etc/redis.conf
```
```

We've installed your MySQL database without a root password. To secure it run:
    mysql_secure_installation

MySQL is configured to only allow connections from localhost by default

To connect run:
    mysql -uroot

To restart mysql after an upgrade:
  brew services restart mysql
Or, if you don't want/need a background service you can just run:
  /usr/local/opt/mysql/bin/mysqld_safe --datadir=/usr/local/var/mysql

```
```
CREATE SCHEMA `dao` DEFAULT CHARACTER SET utf8 ;
```
原来的修改密码语句为
UPDATE user SET authentication_string = password('123456') WHERE User='root';
在mysql8中会报错：
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ‘(‘123456’) WHERE User=‘root’’ at line 1`

正确sql语句：
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '密码';
提示修改成功，但不会自动退出mysql命令行。
下次登陆mysql使用新密码

```
Go语言使用Bcrypt实现加密或验证登录密码

Bcrypt 就是一款加密工具，它生成的密文是60位的，而且每次加密生成的值是不一样的。
MD5 加密后的值是32位的，且每次加密后的密文都是一样的。
保存密码，一般我们都推荐使用 Bcrypt 进行加密，而不使用 MD5.

Bcrypt 加密后的值举例：

# 比如加密 admin, 两次结果不一样，但都以 $2a 开头
$2a$10$cL3WHWi3/x96MII1pwm4NOMRESxbAHnImp.tV5AMIJCneIkp2IAF2
$2a$10$P1zZnMm8/KYVseSkkfh0T.i2cVwydZ5L/5rZEALWCo3f9TmVLmM9q

# 加密 123456：
$2a$10$wtJie2Wc93SqCCri5u/f4uZX7ATSSyMxlrCTEkPmNHLl9Oa0QdLim
```