using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using Common;

namespace WebFormUI.Admin{
    public partial class AdminList : System.Web.UI.Page{

        private BLLAdminBase bllbase = new BLLAdminBase();
        protected void Page_Load(object sender, EventArgs e){
            if (!IsPostBack){
                LoadBind();
            }
        }

        public void LoadBind(){

            Model.FYJT_Admin modelAdmin = new Model.FYJT_Admin();
            rptAdminList.DataSource = bllbase.getTable();
            rptAdminList.DataBind();
        }
    }
}