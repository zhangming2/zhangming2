using Chloe;
using Chloe.MySql;
using Chloe.Oracle;
using Chloe.SqlServer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WaterCloud.DataBase
{
    public class DBContexHelper
    {
        public static string ConnectStr = ConfigurationManager.ConnectionStrings["WaterCloudDbContext"].ConnectionString;
        private static DbContext contex;
        public static DbContext Contex
        {
            get
            {
                string providerName = ConfigurationManager.ConnectionStrings["WaterCloudDbContext"].ProviderName;
                switch (providerName)
                {
                    case "System.Data.SqlClient":
                        return new MsSqlContext(ConnectStr);
                    case "MySql.Data.MySqlClient":
                        return new MySqlContext(new MySqlConnectionFactory(ConnectStr));
                    case "Oracle.ManagedDataAccess.Client":
                        var con = new OracleContext(new OracleConnectionFactory(ConnectStr));
                        con.ConvertToUppercase = false;
                        return con;
                    default:
                        return new MsSqlContext(ConnectStr);
                }

            }
            set
            {
                contex = value;
            }
        }

    }
}
