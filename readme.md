## 安装依赖

1. 解压项目，用pycharm打开projects目录。 在pycharm配置python解释器，3.8及以上都可以。可以通过conda或者其他的虚拟环境来安装。下载django pymysql cryptography
2. 初始化数据库：在项目目录下执行`mysql -u[username] -p[password]`登录mysql，随后执行
    ```bash
    mysql> source db.sql
    ```
3. 在pycharm终端依次输入`python manage.py makemigrations和python manage.py migrate`进行表结构迁移，若出现`Table 'xxx' already exists`的错误，则执行`python manage.py migrate --fake-initial`
4. 根据数据库情况修改/projects/settings.py文件
5. 全部导入成功后运行

## 运行

1. 运行服务器: `python manage.py runserver`
2. 进入系统：[127.0.0.1:8000/projects/login](127.0.0.1:8000/projects/login)
3. 账号密码在数据库user表中，type字段0为管理员账号，用户名密码默认为admin，type字段1为教师账号，2为学生账号

## 备注

- 涉及改动数据库结构即`models.py`中字段时请修改后运行
  ```shell
  python manage.py makemigrations
  python manage.py migrate
  ```
