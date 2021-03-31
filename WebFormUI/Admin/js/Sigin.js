/*********登陆************/
$("#btnLogin").click(function () {
    var uname = $("#uname").val();
    var pwd = $("#pwd").val();
    var codetext = $("#codetext").val();
    var isremenberpwd = 0;
    if ($("#cbremenber").is(":checked")) 
    {
        isremenberpwd = 1;
    } 


    if (uname == "") {
        alert("请输入账号！");
        return false;

    }

    if (pwd =="") {
        alert("请输入密码！");
        return false;
    }

    $.ajax({
        type: "post",
        url: "/Admin/Ashx/Sigin.ashx",
        data: { uname: uname, pwd: pwd, vcode: codetext, isremenberpwd: isremenberpwd },
        success: function (data) {
            window.location.href = "/Admin/index.aspx";
        },
        error: function (data) {
            alert("登陆失败!");
        }
    });

});