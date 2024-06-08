#!/usr/bin/env python
# 导入操作系统模块，用于设置环境变量
import os
# 导入系统模块，用于获取命令行参数
import sys

# 定义主函数，用于执行管理任务
def main():
    # 设置默认的Django项目设置模块
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'projects.settings')
    try:
        # 尝试从django.core.management模块导入execute_from_command_line函数
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        # 如果导入失败，抛出ImportError异常，并提示用户检查Django是否已安装、PYTHONPATH环境变量是否正确以及是否激活了虚拟环境
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    # 调用execute_from_command_line函数，传入命令行参数
    execute_from_command_line(sys.argv)

# 如果当前脚本是主程序，则执行main函数
if __name__ == '__main__':
    main()
