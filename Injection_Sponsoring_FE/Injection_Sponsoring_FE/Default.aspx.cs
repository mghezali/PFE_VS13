using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Injection_Sponsoring_FE
{
    public partial class _Default : Page
    {
        private bool isEditMode = false;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void uploadFile_Load(object sender, EventArgs e)
        {
            //ClientScript.RegisterStartupScript(this.GetType(), "my alert", "alert(' ');", true);
        }

        protected void gridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void uploadButton_Click(object sender, EventArgs e)
        {
            if (uploadFile.HasFile)
            {
                string folderPath = ConfigurationManager.AppSettings["ExcelFolder"];
                string fileName = uploadFile.PostedFile.FileName;
                string filePath = Server.MapPath(folderPath + fileName);
                uploadFile.SaveAs(filePath);
                gridView.DataSource = Parse(filePath);
                gridView.DataBind();
            }

        }

        static DataSet Parse(string fileName)
        {
            string connectionString = string.Format("provider=Microsoft.ACE.OLEDB.12.0; data source={0};Extended Properties=Excel 12.0;", fileName);

            DataSet data = new DataSet();

            foreach (var sheetName in GetExcelSheetNames(connectionString))
            {
                using (OleDbConnection con = new OleDbConnection(connectionString))
                {
                    var dataTable = new DataTable();
                    string query = string.Format("SELECT * FROM [{0}]", sheetName);
                    con.Open();
                    OleDbDataAdapter adapter = new OleDbDataAdapter(query, con);
                    adapter.Fill(dataTable);
                    data.Tables.Add(dataTable);
                }
            }
            return data;
        }

        static string[] GetExcelSheetNames(string connectionString)
        {
            OleDbConnection con = null;
            DataTable dt = null;
            con = new OleDbConnection(connectionString);
            con.Open();
            dt = con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);

            if (dt == null)
            {
                return null;
            }

            String[] excelSheetNames = new String[dt.Rows.Count];
            int i = 0;

            foreach (DataRow row in dt.Rows)
            {
                excelSheetNames[i] = row["TABLE_NAME"].ToString();
                i++;
            }
            con.Close();
            return excelSheetNames;
        }

        
    }
}