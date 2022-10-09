using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyBanHang.Models
{
    internal class DatabaseConnect
    {
        string stringConnection = "";
        SqlConnection sqlConnection = null;

        void OpenConnect()
        {
            sqlConnection = new SqlConnection(stringConnection);
            if (sqlConnection.State != ConnectionState.Open)
            {
                sqlConnection.Open();
            }
        }

        void CloseConnect()
        {
            if (sqlConnection.State != ConnectionState.Closed)
            {
                sqlConnection.Close();
                sqlConnection.Dispose();
            }
        }

        public DataTable DataReader(string sql)
        {
            DataTable dataTable = new DataTable();
            OpenConnect();
            SqlDataAdapter sqlData = new SqlDataAdapter(sql, sqlConnection);
            sqlData.Fill(dataTable);
            CloseConnect();
            return dataTable;
        }

        public void DataChange(string sql)
        {
            OpenConnect();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = sqlConnection;
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();
            CloseConnect();
        }
    }
}
