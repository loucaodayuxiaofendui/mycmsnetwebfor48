/********
 * 类名：BLLBase
 * 功能：实例化DAL方法并返回对应类型
 * 版本号：VS1.0.0
 * 创建日期：2015-10-22 01:19:56
 * 作者：Wandefour
 ********/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DAL;
using Model;

namespace BLL
{
    public class BLLAdminBase
    {
        private  DALDBHelper dalhelper = new DALDBHelper();
        /// <summary>
        /// 获取整表Admin
        /// </summary>
        /// <returns>table</returns>
        public  DataTable getTable()
        {        
            string cmdText = "select * from FYJT_Admin";
            //return dalhelper.getTable(cmdText);
            return dalhelper.getTable(cmdText);
        }

        /// <summary>
        /// 根据用户名获取整张表
        /// </summary>
        /// <param name="adminmodel">admin实体</param>
        /// <returns>返回表</returns>
        public DataTable getTableByUserName(Model.FYJT_Admin adminmodel)
        {
            string cmdText = "select * from FYJT_Admin where AdminID=@AdminID";
            SqlParameter[] sqlparameters=
            {
              new SqlParameter("@AdminID",SqlDbType.VarChar,500)                    
            };
            sqlparameters[0].Value = adminmodel.AdminID;
            return dalhelper.getTableBySqlParameter(cmdText, sqlparameters);
        }

        public DataTable getTableByUserNameAndPassWord(Model.FYJT_Admin adminmodel)
        {
            string cmdText = "select top 1 * from FYJT_Admin where AdminID=@AdminID and PassWord=@PassWord";
            SqlParameter[] sqlparameters =
            {
              new SqlParameter("@AdminID",SqlDbType.VarChar,500),
              new SqlParameter("@PassWord",SqlDbType.VarChar,500)
            };
            sqlparameters[0].Value = adminmodel.AdminID;
            sqlparameters[1].Value = adminmodel.PassWord;
            return dalhelper.getTableBySqlParameter(cmdText, sqlparameters);
        }




    }
}
