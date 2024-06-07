CREATE DATABASE `self_select_project` DEFAULT CHARACTER SET utf8;

USE `self_select_project`;

INSERT INTO colleges (id, name, create_time) VALUES ('1638089590690', '软件工程', '2021-11-28 17:00:00');
INSERT INTO colleges (id, name, create_time) VALUES ('1638089590691', '土木工程', '2021-11-28 17:00:00');

INSERT INTO majors (id, name, create_time) VALUES ('1638089590690', '信息安全', '2021-11-28 17:00:00');
INSERT INTO majors (id, name, create_time) VALUES ('1638089590691', '软件开发', '2021-11-28 17:00:00');
INSERT INTO majors (id, name, create_time) VALUES ('1638089590692', '软件测试', '2021-11-28 17:00:00');
INSERT INTO majors (id, name, create_time) VALUES ('1638089590693', '园林规划', '2021-11-28 17:00:00');

INSERT INTO grades (id, name, create_time) VALUES ('1638089590690', '一年级一班', '2021-11-28 17:00:00');
INSERT INTO grades (id, name, create_time) VALUES ('1638089590691', '一年级二班', '2021-11-28 17:00:00');
INSERT INTO grades (id, name, create_time) VALUES ('1638089590692', '二年级一班', '2021-11-28 17:00:00');
INSERT INTO grades (id, name, create_time) VALUES ('1638089590693', '三年级一班', '2021-11-28 17:00:00');

INSERT INTO projects (id, name, create_time) VALUES ('1638089590690', 'JAVA开发', '2021-11-28 17:00:00');
INSERT INTO projects (id, name, create_time) VALUES ('1638089590691', '系统测试', '2021-11-28 17:00:00');
INSERT INTO projects (id, name, create_time) VALUES ('1638089590692', '操作系统', '2021-11-28 17:00:00');

INSERT INTO users (id, user_name, pass_word, name, age, gender, type) VALUES ('1638089590690', 'admin', 'admin', '风清扬', 38, '男', 0);
INSERT INTO users (id, user_name, pass_word, name, age, gender, type) VALUES ('1638089590691', 'fater', 'fater', '任我行', 35, '男', 1);
INSERT INTO users (id, user_name, pass_word, name, age, gender, type) VALUES ('1638089590692', 'linghuchong', 'linghuchong', '令狐冲', 18, '男', 2);
INSERT INTO users (id, user_name, pass_word, name, age, gender, type) VALUES ('1638089590693', 'yuelingshan', 'yuelingshan', '岳林珊', 18, '女', 2);
INSERT INTO users (id, user_name, pass_word, name, age, gender, type) VALUES ('1638089590694', 'laderuo', 'laderuo', '劳德偌', 18, '男', 2);
INSERT INTO users (id, user_name, pass_word, name, age, gender, type) VALUES ('1638089590695', 'luhouer', 'luhouer', '陆猴儿', 18, '男', 2);
INSERT INTO users (id, user_name, pass_word, name, age, gender, type) VALUES ('1638089590696', 'caizifeng', 'caizifeng', '蔡子峰', 18, '男', 2);

INSERT INTO teachers (id, record, phone, address) VALUES ('1638089590691', '本科', '90291029301', '喜悦小区298号');

INSERT INTO students (id, major_id, college_id, grade_id) VALUES ('1638089590692', '1638089590691', '1638089590690', '1638089590690');
INSERT INTO students (id, major_id, college_id, grade_id) VALUES ('1638089590693', '1638089590691', '1638089590690', '1638089590690');
INSERT INTO students (id, major_id, college_id, grade_id) VALUES ('1638089590694', '1638089590691', '1638089590690', '1638089590690');
INSERT INTO students (id, major_id, college_id, grade_id) VALUES ('1638089590695', '1638089590691', '1638089590690', '1638089590690');
INSERT INTO students (id, major_id, college_id, grade_id) VALUES ('1638089590696', '1638089590691', '1638089590690', '1638089590690');

