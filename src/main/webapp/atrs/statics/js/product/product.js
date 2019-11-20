function fenlei() {
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            gid:0
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}
function fenlei01() {
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            size:0
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}
function fenlei02() {
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            current:0.0
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}


function fenlei1() {
    var gid=$("#shuhua").val();
    gid=parseInt(gid);
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            gid:gid
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}
function fenlei2() {
    var gid=$("#youhau").val();
    gid=parseInt(gid);
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            gid:gid
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}

function fenlei3() {
    var gid=$("#banhua").val();
    gid=parseInt(gid);
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            gid:gid
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}
function fenlei4() {
    var gid=$("#diaoshu").val();
    gid=parseInt(gid);
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            gid:gid
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}

function fenlei5() {
    var size=$("#cicun1").val();
    size=parseInt(size);
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            size:size
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}
function fenlei6() {
    var size=$("#cicun2").val();
    size=parseInt(size);
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            size:size
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}
function fenlei7() {
    var size=$("#cicun3").val();
    size=parseInt(size);
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            size:size
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}
function fenlei8() {
    var current=$("#money1").val();
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            current:current
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}
function fenlei9() {
    var current=$("#money2").val();
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            current:current
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}
function fenlei10() {
    var current=$("#money3").val();
    $.ajax({
        type:"post",
        url: "/ProductServlet",
        data:{
            ty:"pro",
            current:current
        },
        dataType:"html",
        success:function (data) {
            $("#page").html(data)
        }
    })
}
