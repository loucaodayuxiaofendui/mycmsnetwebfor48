/********
 * 页面：Admin.cs
 * 功能: 将表Admin 字段封装为一个实体model 便于项目统一开发和规范
 * 版本号：VS1.0.0
 * 创建日期：2016-01-20 15:37:42
 * 作者：Wandefour
 ********/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    /// <summary>
    /// FYJT_Admin 表
    /// </summary>
    public class FYJT_Admin
    {
        //ID
        public int ID
        {
            get;
            set;
        }

        //用户名
        public string AdminID
        {
            get;
            set;
        }

        //角色ID
        public int RoleID
        {
            get;
            set;
        }

        //密码
        public string PassWord
        {
            get;
            set;
        }

        //当前登录IP
        public string ThisLoginIP
        {
            get;
            set;
        }
        //上次登录IP
        public string LastLoginIP
        {
            get;
            set;
        }
        
　　　　//昵称
        public string NickName
        {
            get;
            set;
        }
    }
}
