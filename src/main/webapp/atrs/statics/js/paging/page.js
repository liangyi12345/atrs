function shang() {
   var currentPage = $("#currentPage").val();
    currentPage= parseInt(currentPage)-1;
    if (currentPage<=0){
        currentPage=1;
    }
    $.ajax({
        type: "post",
        url: "/ProductServlet",
        data: {
            ty:"pro",
            currentPage:currentPage
        },
        dataType : "html",
        success :function(data){
            $("#page").html(data)
        }
    })
}
function xia() {
    var currentPage = $("#currentPage").val();
    currentPage= parseInt(currentPage)+1;
    $.ajax({
        type: "post",
        url: "/ProductServlet",
        data: {
            ty:"pro",
            currentPage:currentPage
        },
        dataType : "html",
        success :function(data){
            $("#page").html(data)
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
        url: "/ProductServlet",
        data: {
            ty:"pro",
            currentPage:currentPage
        },
        dataType : "html",
        success :function(data){
            $("#page").html(data)
        }
    })
}
function tiao1(i) {
    $.ajax({
        type: "post",
        url: "/ProductServlet",
        data: {
            ty:"pro",
            currentPage:i
        },
        dataType : "html",
        success :function(data){
            $("#page").html(data)
        }
    })
}






function load() {
    $.ajax({
        type: "post",
        url: "/ProductServlet",
        data: {
            ty:"pro"
        },
        dataType : "html",
        success :function(data){
            $("#page").html(data)
        }
    })
}