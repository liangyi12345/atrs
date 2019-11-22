function load() {
    $.ajax({
        type: "post",
        url: "/ArtistServlet",
        data: {
            ty:"ar"
        },
        dataType : "html",
        success :function(data){
            $("#art").html(data)
        }
    })
}
function fenlei() {
    $.ajax({
        type:"post",
        url: "/ArtistServlet",
        data:{
            ty:"ar",
            gid:0
        },
        dataType:"html",
        success:function (data) {
            $("#art").html(data)
        }
    })
}
function fenlei1() {
    var gid=$("#shuhau").val();
    $.ajax({
        type:"post",
        url: "/ArtistServlet",
        data:{
            ty:"ar",
            gid:gid
        },
        dataType:"html",
        success:function (data) {
            $("#art").html(data)
        }
    })
}

function fenlei2() {
    var gid=$("#youhua").val();
    $.ajax({
        type:"post",
        url: "/ArtistServlet",
        data:{
            ty:"ar",
            gid:gid
        },
        dataType:"html",
        success:function (data) {
            $("#art").html(data)
        }
    })
}
function fenlei3() {
    var gid=$("#banhua").val();
    $.ajax({
        type:"post",
        url: "/ArtistServlet",
        data:{
            ty:"ar",
            gid:gid
        },
        dataType:"html",
        success:function (data) {
            $("#art").html(data)
        }
    })
}
function fenlei4() {
    var gid=$("#diaoxaing").val();
    $.ajax({
        type:"post",
        url: "/ArtistServlet",
        data:{
            ty:"ar",
            gid:gid
        },
        dataType:"html",
        success:function (data) {
            $("#art").html(data)
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
        url: "/ArtistServlet",
        data: {
            ty:"ar",
            currentPage:currentPage
        },
        dataType : "html",
        success :function(data){
            $("#art").html(data)
        }
    })
}
function xia() {
    var currentPage = $("#currentPage").val();
    currentPage= parseInt(currentPage)+1;
    $.ajax({
        type: "post",
        url: "/ArtistServlet",
        data: {
            ty:"ar",
            currentPage:currentPage
        },
        dataType : "html",
        success :function(data){
            $("#art").html(data)
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
        url: "/ArtistServlet",
        data: {
            ty:"ar",
            currentPage:currentPage
        },
        dataType : "html",
        success :function(data){
            $("#art").html(data)
        }
    })
}
function tiao1(i) {
    $.ajax({
        type: "post",
        url: "/ArtistServlet",
        data: {
            ty:"ar",
            currentPage:i
        },
        dataType : "html",
        success :function(data){
            $("#art").html(data)
        }
    })
}