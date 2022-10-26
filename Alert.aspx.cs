using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FactLab
{
    public partial class Alert : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string msg = "Error, revisar información de la factura.";
            ScriptManager.RegisterStartupScript(this, GetType(), "swal", "swal('" + msg + "', 'Error ', 'error');setTimeout(function(){window.location.href ='Default.aspx'}, 10000)", true);
        }
    }
}