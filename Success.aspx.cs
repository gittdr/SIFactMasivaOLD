using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FactLab
{
    public partial class Success : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string msg = "Generado(s) correctamente el/los CFDi(s)";
            ScriptManager.RegisterStartupScript(this, GetType(), "swal", "swal('" + msg + "', 'Existoso ', 'success');setTimeout(function(){window.location.href ='Default.aspx'}, 10000)", true);
        }
    }
}