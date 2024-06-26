import app.views

from django.urls import path

urlpatterns = [
    path('', app.views.sys_index_view),
    path('login/', app.views.sys_login_view),
    path('loginForm', app.views.sys_login_data),
    path('logout/', app.views.sys_logout_view),
    path('info/', app.views.sys_info_data),
    path('infoForm', app.views.sys_info_form_data),
    path('pwd', app.views.sys_pwd_form_data),

    path('colleges/', app.views.college_view),
    path('colleges/page/', app.views.college_data_page),
    path('colleges/info', app.views.college_data_info),
    path('colleges/add', app.views.college_data_add),
    path('colleges/upd', app.views.college_data_upd),
    path('colleges/del', app.views.college_data_del),

    path('majors/', app.views.major_view),
    path('majors/page/', app.views.major_data_page),
    path('majors/info/', app.views.major_data_info),
    path('majors/add', app.views.major_data_add),
    path('majors/upd', app.views.major_data_upd),
    path('majors/del', app.views.major_data_del),

    path('projects/', app.views.project_view),
    path('projects/page/', app.views.project_data_page),
    path('projects/info/', app.views.project_data_info),
    path('projects/grade/', app.views.project_data_grade),
    path('projects/add', app.views.project_data_add),
    path('projects/upd', app.views.project_data_upd),
    path('projects/del', app.views.project_data_del),

    path('grades/', app.views.grade_view),
    path('grades/page/', app.views.grade_data_page),
    path('grades/info/', app.views.grade_data_info),
    path('grades/add', app.views.grade_data_add),
    path('grades/upd', app.views.grade_data_upd),
    path('grades/del', app.views.grade_data_del),

    path('students/', app.views.students_view),
    path('students/page/', app.views.students_data_page),
    path('students/info/', app.views.students_data_info),
    path('students/add', app.views.students_data_add),
    path('students/upd', app.views.students_data_upd),
    path('students/del', app.views.students_data_del),

    path('teachers/', app.views.teachers_view),
    path('teachers/page/', app.views.teachers_data_page),
    path('teachers/info/', app.views.teachers_data_info),
    path('teachers/add', app.views.teachers_data_add),
    path('teachers/upd', app.views.teachers_data_upd),
    path('teachers/del', app.views.teachers_data_del),
    path('teachers/work', app.views.teachers_data_work),

    path('workPalns/', app.views.work_view),
    path('workPalns/list', app.views.work_data_list),
    path('workPalns/add', app.views.work_data_add),

    path('selectLogs/', app.views.select_view),
    path('selectLogs/add', app.views.select_data_add),
    path('selectLogs/page/all/', app.views.select_data_page),
    path('selectLogs/student/all', app.views.selec_data_student_select),
    path('students/projects', app.views.selec_view_student_selected),
    path('selectLogs/student/selected', app.views.selec_data_student_selected),
    path('selectLogs/student/selected_statistic', app.views.selec_data_student_selected_statistic),
    path('selectLogs/page/teacher', app.views.select_data_teastudent_page),
    path('selectLogs/page/teacher_statistic', app.views.select_data_teastudent_page_statistic),

    path('evaluations/', app.views.eva_view),
    path('evaluation/student/all', app.views.eva_student_page),
    path('evaluation/add', app.views.eva_data_add),
    path('evaluation/info', app.views.eva_data_info),
    path('evaluation/teacher_info', app.views.eva_teacher_info)

]
