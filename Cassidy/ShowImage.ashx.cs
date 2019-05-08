using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

//https://www.dotnetcurry.com/ShowArticle.aspx?ID=129

namespace Cassidy
{
    /// <summary>
    /// Summary description for ShowImage
    /// </summary>
    public class ShowImage : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            Int32 pdtno;
            if (context.Request.QueryString["id"] != null)
                pdtno = Convert.ToInt32(context.Request.QueryString["id"]);
            else
                throw new ArgumentException("No parameter specified");

            context.Response.ContentType = "image/jpeg";
            Stream strm = ShowProductImage(pdtno);
            byte[] buffer = new byte[4096];
            int byteSeq = strm.Read(buffer, 0, 4096);

            while (byteSeq > 0)
            {
                context.Response.OutputStream.Write(buffer, 0, byteSeq);
                byteSeq = strm.Read(buffer, 0, 4096);
            }
        }

    //context.Response.BinaryWrite(buffer);
    public Stream ShowProductImage(int pdtno)
    {
        string conn = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection connection = new SqlConnection(conn);
        string sql = "SELECT ProductImage FROM Products WHERE ProductID = @ID";
        SqlCommand cmd = new SqlCommand(sql, connection);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@ID", pdtno);
        connection.Open();
        object img = cmd.ExecuteScalar();
        try
        {
            return new MemoryStream((byte[])img);
        }
        catch
        {
            return null;
        }
        finally
        {
            connection.Close();
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}

}