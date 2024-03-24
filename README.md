# 图书管理系统

### 代码所需环境配置说明和执行方式：
1. 需要本地机器有MYSQL的基本配置
2. 先通过libray_management.sql文件在本地创建相应数据库，连接数据库
3. 注意在library_management/Springboot/src/main/resourses/application.yml配置文件下，用户名username和密码password需要和本地数据库设置的用户名和密码保持一致。
4. 本地机器需下载配置node.js；Vue CLI需要Node.js v8.9或更高版本。

## 前端：
5. 终端进入library_management/vue下：
npm install --registry=https://registry.npm.taobao.org
6. 输入npm run serve
7. 在本地网址输入localhost:8080即可进入到页面中了（端口号根据分配端口号进行输入）

## 后端：
8. 需要SpringBoot基本配置，建议用idea等编译器打开项目
9. Build and Run com.example.springboot.SpringbootApplication, 后台端口号分配在resourses/application.yml配置文件，可自行更改

10. 如果出现“'vue-cli-service' 不是内部或外部命令，也不是可运行的程序或批处理文件。”这样的报错，删掉node_modules文件，重复5-10步骤。

# -
