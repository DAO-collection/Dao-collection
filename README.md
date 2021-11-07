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