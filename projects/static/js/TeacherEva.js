$(function (){

    let tableView =  {
        el: "#tableShow",
        url: "/projects/evaluation/teacher_info",
        method: "GET",
        where: {
            pageIndex: 1,
            pageSize: 10
        },
        page: true,
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
				field: "gradeName",
				title: "班级名称",
				align: "center",
			},
            {
				field: "evaBook",
				title: "教材评价",
				align: "center",
			},
            {
				field: "evaTeacher",
				title: "教学评价",
				align: "center",
			},
            {
				field: "evaEffect",
				title: "效果评价",
				align: "center",
			},
        ]
    }
    $.table(tableView);

    $(".fater-btn-form-qry").on("click", ()=>{

        tableView.where["gradeId"] = $("[name=para3]").val();
        tableView.where["projectId"] = $("[name=para4]").val();

        $.table(tableView);
    });


});
