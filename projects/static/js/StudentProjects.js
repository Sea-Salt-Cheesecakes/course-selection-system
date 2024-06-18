$(function (){
    let statisticView = {
        el: "#statisticShow",
        url: "/projects/selectLogs/student/selected_statistic",
        method: "GET",
        page: false,
        cols: [
            {
                field: "selectCount",
                title: "已选课程数量",
                align: "center"
            },
            {
                field: "selectCredit",
                title: "已选课程学分",
                align: "center"
            }
        ]
    }

    $.table(statisticView);

    let tableView =  {
            el: "#tableShow",
            url: "/projects/selectLogs/student/selected",
            method: "GET",
            page: false,
            cols: [
                {
                    type: "number",
                    title: "序号",
                },
                {
    				field: "projectName",
    				title: "课程名称",
    				align: "center",
    			},
                {
                    field: "credit",
                    title: "课程学分",
                    align: "center",
                },
                {
    				field: "teacherName",
    				title: "授课教师",
    				align: "center",
    			},
                /*
                {
    				field: "teacherGender",
    				title: "教师性别",
    				align: "center",
    			},
                {
    				field: "teacherRecord",
    				title: "教师学历",
    				align: "center",
    			},*/
            ]
        }

    $.table(tableView);

});
