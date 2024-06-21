#使用Django框架的Python代码，定义了一些数据库模型类。
#这些类分别表示学院、专业、课程、年级、用户、学生、教师、工作计划和选课记录等实体。
#每个类都继承自models.Model，并定义了一些字段（如id、name等），以及一些元数据信息（如db_table等）

from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator

# 定义一个名为CharField的类，继承自models.Field
class CharField(models.Field):
    # 初始化方法，接收最大长度max_length以及其他参数
    def __init__(self, max_length, *args, **kwargs):
        # 将传入的最大长度赋值给实例变量max_length
        self.max_length = max_length
        # 调用父类的初始化方法，传入最大长度以及其他参数
        super(CharField, self).__init__(max_length=max_length, *args, **kwargs)

    # 定义一个名为db_type的方法，接收一个名为connection的参数
    def db_type(self, connection):
        # 返回一个字符串，表示数据库中的字段类型为char，并设置最大长度
        return 'char(%s)' % self.max_length

# 定义一个名为Colleges的类，继承自models.Model
class Colleges(models.Model):
    # 定义一个名为id的字段，类型为CharField，作为主键
    id = models.CharField('学院编号', max_length=13, primary_key=True)
    # 定义一个名为name的字段，类型为CharField，最大长度为20，不能为空
    name = models.CharField('学院名称', max_length=20, null=False)
    # 定义一个名为createTime的字段，类型为CharField，最大长度为19，不能为空，数据库中的列名为create_time
    createTime = models.CharField('记录时间', db_column='create_time', max_length=19, null=False)
    # 定义一个名为Meta的内部类，用于设置元数据信息
    class Meta:
        # 设置数据库表名为colleges
        db_table = 'colleges'

class Majors(models.Model):
    id = models.CharField('专业编号', max_length=13, primary_key=True)
    name = models.CharField('专业名称', max_length=20, null=False)
    createTime = models.CharField('记录时间', db_column='create_time', max_length=19, null=False)
    class Meta:
        db_table = 'majors'

class Projects(models.Model):
    id = models.CharField('课程编号', max_length=13, primary_key=True)
    name = models.CharField('课程名称', max_length=20, null=False)
    createTime = models.CharField('记录时间', db_column='create_time', max_length=19, null=False)
    credit = models.FloatField('课程学分', null=False)
    class Meta:
        db_table = 'projects'

class Grades(models.Model):
    id = models.CharField('年级编号', max_length=13, primary_key=True)
    name = models.CharField('年级名称', max_length=20, null=False)
    createTime = models.CharField('记录时间', db_column='create_time', max_length=19, null=False)
    class Meta:
        db_table = 'grades'

class Users(models.Model):
    id = models.CharField('用户编号', max_length=13, primary_key=True)
    userName = models.CharField('用户账号', db_column='user_name', max_length=32, null=False)
    passWord = models.CharField('用户密码', db_column='pass_word', max_length=32, null=False)
    name = models.CharField('用户姓名', max_length=20, null=False)
    age = models.IntegerField('用户年龄', null=False)
    gender = models.CharField('用户性别', max_length=4, null=False)
    type = models.IntegerField('用户身份', null=False)
    class Meta:
        db_table = 'users'

class Students(models.Model):
    user = models.OneToOneField(Users, on_delete=models.CASCADE, db_column="id", max_length=13, primary_key=True)
    major = models.ForeignKey(Majors, on_delete=models.CASCADE, db_column="major_id", max_length=13)
    college = models.ForeignKey(Colleges, on_delete=models.CASCADE, db_column="college_id", max_length=13)
    grade = models.ForeignKey(Grades, on_delete=models.CASCADE, db_column="grade_id", max_length=13)

    class Meta:
        db_table = 'students'

class Teachers(models.Model):
    user = models.OneToOneField(Users, on_delete=models.CASCADE, db_column="id", max_length=13, primary_key=True)
    record = models.CharField('教师学历', max_length=8, null=False)
    phone = models.CharField('联系电话', max_length=11, null=False)
    address = models.CharField('联系地址', max_length=32, null=False)
    class Meta:
        db_table = 'teachers'

class WorkPalns(models.Model):
    id = models.CharField('记录编号', max_length=13, primary_key=True)
    teacher = models.ForeignKey(Teachers, on_delete=models.CASCADE, db_column="teacher_id", max_length=13, null=False)
    grade = models.ForeignKey(Grades, on_delete=models.CASCADE, db_column="grade_id", max_length=13, null=False)
    project = models.ForeignKey(Projects, on_delete=models.CASCADE, db_column="project_id", max_length=13, null=False)
    evaBook = models.IntegerField('教材评价', null=True, validators=[MinValueValidator(1), MaxValueValidator(10)])
    evaTeacher = models.IntegerField('教学评价', null=True, validators=[MinValueValidator(1), MaxValueValidator(10)])
    evaEffect = models.IntegerField('效果评价', null=True, validators=[MinValueValidator(1), MaxValueValidator(10)])
    class Meta:
        db_table = 'work_palns'

class SelectLogs(models.Model):
    id = models.CharField('记录编号', max_length=13, primary_key=True)
    student = models.ForeignKey(Students, on_delete=models.CASCADE, db_column="student_id", max_length=13, null=True)
    workPaln = models.ForeignKey(WorkPalns, on_delete=models.CASCADE, db_column="plan_id", max_length=13, null=False)
    class Meta:
        db_table = 'select_logs'
