$(function (){

    let tableView =  {
            el: "#tableShow",
            url: "/projects/evaluation/student/all",
            method: "GET",
            page: false,
            cols: [
                {
                    type: "id",
                    title: "课程编号",
                },
                {
    				field: "projectName",
    				title: "课程名称",
    				align: "center",
    			},
                {
    				field: "teacherName",
    				title: "授课教师",
    				align: "center",
    			},
    			{
                    title: "评价",
                    template: (d)=>{

                        if(d.isSelected){

                            return `
                                    <button type="button" class="fater-btn fater-btn-disableed fater-btn-sm">
                                        已评价
                                    </button>
                                    `;
                        }else{

                            return `
                                    <button type="button" event="select" data="${d.id}" class="fater-btn fater-btn-primary fater-btn-sm">
                                        去评价
                                    </button>
                                    `;
                        }

                    }
                }
            ]
        }

    $.table(tableView);

    $("button[event=select]").on("click", (e)=>{
    
        $(".planId").attr("value",$(e.target).attr("data"));
        $.model(".evaWin");
    });

    $("#evaFormBtn").on("click", ()=>{

        let formVal = $.getFrom("evaForm");
        
        $.ajax({
            url: "/projects/evaluation/add",
            type: "POST",
            async: false,
            data: formVal,
            success: function(res){
                if(res.code == 0){
                    $.alert(res.msg, () =>{

                        window.location.reload();
                    });
                }else{
                    $.msg("error", res.msg);
                }
            }
        });
    });
});