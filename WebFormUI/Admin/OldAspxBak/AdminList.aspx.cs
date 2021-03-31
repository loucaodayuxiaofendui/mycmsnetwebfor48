/********
 * 页面：AdminList.asp
 * 功能：调用BLL层方法得到数据并展示
 * 版本号：VS1.0.0
 * 创建日期：2015-10-22 01:21:57
 * 作者：Wandefour
 ********/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using System.Data;

namespace WebFormUI.Admin
{
    public partial class WebFormUI.Admin.AdminList : System.Web.UI.Page
    {
        private BLLAdminBase bllbase = new BLLAdminBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBind();
            }
        }

        /// <summary>
        /// 绑定数据
        /// </summary>
        public void LoadBind()
        {
            //rptAdminList.DataSource = bllbase.getTable();
            //rptAdminList.DataBind();

            //Admin modeladmin = new Admin();
            Model.Admin modeladmin = new Model.Admin();
            modeladmin.AdminID = "1001";

            rptAdminList.DataSource = bllbase.getTableByUserName(modeladmin);
            rptAdminList.DataBind();



        }
    }
}
