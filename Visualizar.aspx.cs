using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabRepaso2_Parcial2_
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string archivo = Server.MapPath("Datos.json");
                Libros.listaLibros.Clear();
                Libros.leerJson(archivo);

                GridView1.DataSource = null;
                GridView1.DataBind();
                GridView1.DataSource = Libros.listaLibros;
                GridView1.DataBind();
            }
        }
    }
}