安装依赖
1. 解压项目，用pycharm打开projects目录。 在pycharm配置python解释器，3.8及以上都可以。可以通过conda或者其他的虚拟环境来安装。
2. 打开mysql 创建库：CREATE DATABASE `self_select_project` DEFAULT CHARACTER SET utf8
3. 在pycharm终端依次输入python manage.py makemigrations和python manage.py migrate进行表结构迁移
4. 导入db.sql数据进入数据库中（方法很多可以上网看下，如果直接导入失败，可能是版本不兼容，只需新建查询，将db.sql中的代码复制进去运行即可）
4. 全部导入成功后，进入运行阶段

运行
1. 运行服务器: python manage.py runserver
2. 进入系统：127.0.0.1:8000/projects/login
3. 账号密码在数据库user表中，type字段0为管理员账号，用户名密码默认为admin，type字段1为教师账号，2为学生账号