<%@ WebHandler Language="C#" Class="Sigin" %>
/********
 * 文件名：Sigin.ashx
 * 功能：登陆
 * 版本号：VS1.0.0
 * 创建日期：2016-01-04 11:27:22
 * 作者：Wandefour
 ********/
using System;
using System.Web;
using Model;
using BLL;
using DAL;
using System.Data;
using Common;
using System.Web.SessionState;
public class Sigin : IHttpHandler,IRequiresSessionState {


    public void ProcessRequest (HttpContext context){
        try
        {
                context.Response.ContentType = "text/plain";
        _BLLAdminBase _BLLAdminBase = new _BLLAdminBase();
        Model.FYJT_Admin adminModel = new FYJT_Admin();

        string code = "0";//返回的状态值 数字
        string msg = "";  //返回的状态值 文本
        string result = "";
        //"[{\"code\":" + code + "\"msg\":" + msg + "}]";

        string uname = context.Request["uname"].ToString();
        string pwd = context.Request["pwd"].ToString();
        string vcode = context.Request["vcode"].ToString();
        string isremenberpwd = context.Request["isremenberpwd"].ToString();



        if (String.IsNullOrEmpty(uname))
        {
            code = "100";
            msg = "请输入账号！";
            result = "[{\"code\":" + code + "\"msg\":" + msg + "}]";

        }

        if (String.IsNullOrEmpty(pwd))
        {
            code = "101";
            msg = "请输入密码!";
            result = "[{\"code\":" + code + "\"msg\":" + msg + "}]";

        }

        if (String.IsNullOrEmpty(vcode))
        {
            code = "103";
            msg = "请输入验证码!";
            result = "[{\"code\":" + code + "\"msg\":" + msg + "}]";

        }

        adminModel.AdminID = uname;
        adminModel.PassWord = pwd;
        DataTable dtModel= _BLLAdminBase.getTableByUserNameAndPassWord(adminModel);
        if (dtModel != null && dtModel.Rows.Count > 0) {


            CookieHelper.SetCookie("AdminUser", dtModel.Rows[0]["AdminID"].ToString());
            //HttpContext.Current.Session["AdminUser"] = dtModel.Rows[0]["AdminID"].ToString();
            //HttpContext.Current.Session.Add("AdminUser",dtModel.Rows[0]["AdminID"].ToString());
            SessionHelper.SetSession("AdminUser", dtModel.Rows[0]["AdminID"].ToString());
        }
        context.Response.Write(result);
        }
        catch (Exception ex)
        {

            throw;
        }
        


    }



    public bool IsReusable
    {
        get {
            return false;
        }
    }

}