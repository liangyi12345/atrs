function log(id) {
        $.ajax({
            type: "post",
            url: "/sessionServlet",
            data: {
                ty:"detail",
                id:id,
                zonghe:"tru"
            },
            dataType : "html",
            success :function(data){
                $("#shangp").html(data)
            }
        })
    }

function psort(id) {
    $.ajax({
        type: "POST",
        url: "/sessionServlet",
        data: {
            id:sid,
            price:"tru",
            ty:"detail"
        },
        dataType : "html",
        success :function(data){
            $("#shangp").html(data)
        }
    })
}
function nsort(id) {
    $.ajax({
        type: "POST",
        url: "/sessionServlet",
        data: {
            id:sid,
            ty:"detail",
            newproduct:"tru"
        },
        dataType : "html",
        success :function(data){
            $("#shangp").html(data)
        }
    })
}
