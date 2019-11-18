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




function shang() {
    var currentPage = $("#currentPage").val();
    currentPage= parseInt(currentPage)-1;
    if (currentPage<=0){
        currentPage=1;
    }
    $.ajax({
        type: "post",
        url: "/sessionServlet",
        data: {
            ty:"detailpage",
            currentPage:currentPage
        },
        dataType : "html",
        success :function(data){
            $("#shangp").html(data)
        }
    })
}
function xia() {
    var currentPage = $("#currentPage").val();
    currentPage= parseInt(currentPage)+1;
    $.ajax({
        type: "post",
        url: "/sessionServlet",
        data: {
            ty:"detailpage",
            currentPage:currentPage
        },
        dataType : "html",
        success :function(data){
            $("#shangp").html(data)
        }
    })
}
function tiao(zuihou) {
    var currentPage = $("#tiao").val();
    currentPage= parseInt(currentPage);
    if (currentPage<=0){
        currentPage=1;
    }
    if (currentPage>zuihou){
        currentPage=zuihou
    }
    $.ajax({
        type: "post",
        url: "/sessionServlet",
        data: {
            ty:"detailpage",
            currentPage:currentPage
        },
        dataType : "html",
        success :function(data){
            $("#shangp").html(data)
        }
    })
}
function tiao1(i) {
    $.ajax({
        type: "post",
        url: "/sessionServlet",
        data: {
            ty:"detailpage",
            currentPage:i
        },
        dataType : "html",
        success :function(data){
            $("#shangp").html(data)
        }
    })
}


