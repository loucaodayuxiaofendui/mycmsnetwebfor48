/********
 * 类名：DALDBHelper
 * 功能：连接数据库
 * 版本号：VS1.0.0
 * 创建日期：2015-09-22 23:08:29
 * 作者：Wandefour
 ********/
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

//命名控件DAL
namespace DAL
{
    /// <summary>
    /// DBHelper 连接数据
    /// </summary>
    public class DALDBHelper
    {
        //创建一个连接字串
        private static string connectionString ="";
        //创建一个连接对象
        private static SqlConnection sqlConn;
        //创建一个命令连接对象
        private static SqlCommand sqlComm;
        //创建一个适配器对象
        private  SqlDataAdapter sqlData;
        //创建一个数据集
        private DataSet ds;
        private DataTable dt;
        public DALDBHelper()
	    {
		//
		//在这里构造一个函数!
		//
            connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["SqlCon"].ToString();
	    }

        /// <summary>
        /// 返回表整张表
        /// </summary>
        /// <param name="cmdText"></param>
        /// <returns></returns>
        public   DataTable getTable(string cmdText)
        {
            try
            {
                Open();
                sqlData = new SqlDataAdapter(cmdText,sqlConn);
                ds = new DataSet();
                sqlData.Fill(ds);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message, e);
            }
            finally
            {
                Close();
            }
            return ds.Tables[0];
        }

        /// <summary>
        /// 返回首行首列的值
        /// </summary>
        /// <param name="cmdText"></param>
        /// <returns></returns>
        public static Object getScalar(string cmdText)
        {
            sqlConn = new SqlConnection(connectionString);
            sqlComm = new SqlCommand(cmdText, sqlConn);
            object other = sqlComm.ExecuteScalar();
            return other;
        }



        /// <summary>
        /// 返回首行首列的值
        /// </summary>
        /// <param name="cmdText"></param>
        /// <returns></returns>
        public  DataTable getTableBySqlParameter(string cmdText,SqlParameter[] sqlparas)
        {
            sqlConn = new SqlConnection(connectionString);
            sqlComm = new SqlCommand(cmdText, sqlConn);
           

             try
            {
                Open();
                sqlComm.Parameters.AddRange(sqlparas);
                sqlData = new SqlDataAdapter(sqlComm);
                ds = new DataSet();
                sqlData.Fill(ds);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message, e);
            }
            finally
            {
                Close();
            }
             return ds.Tables[0];
            
        }

        /// <summary>
        /// 返回受影响的记录条数
        /// </summary>
        /// <param name="cmdText"></param>
        /// <returns></returns>
        public static int getUpdate(string cmdText)
        {
            sqlConn = new SqlConnection(connectionString);
            if (sqlConn.State != ConnectionState.Open)
            {
                sqlConn.Open();
            }
            sqlComm = new SqlCommand(cmdText, sqlConn);
            int other = sqlComm.ExecuteNonQuery();
            sqlConn.Close();
            return other;
        }


        /// <summary>
        /// 打开Conn连接
        /// </summary>
        public void Open()
        {
            sqlConn = new SqlConnection(connectionString);
            if (sqlConn.State.Equals(ConnectionState.Closed))
            {
                sqlConn.Open();
            }
        }


        /// <summary>
        /// 关闭Conn连接并释放....
        /// </summary>
        public void Close()
        {
            sqlConn = new SqlConnection(connectionString);
            if (sqlConn.State.Equals(ConnectionState.Open))
            {
                sqlConn.Close();
                sqlConn.Dispose();
            }
            else
                sqlConn.Dispose();
        }


       


    }
}
