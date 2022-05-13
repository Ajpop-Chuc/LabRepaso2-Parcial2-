using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabRepaso2_Parcial2_
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string archivo = Server.MapPath("Datos.json");
                Libros.listaLibros.Clear();
                Libros.leerJson(archivo);
            }
        }

        protected void ButtonIngresar_Click(object sender, EventArgs e)
        {
            string archivo = Server.MapPath("Datos.json");
            Libros libro = new Libros();

            libro.codigo = TextBoxCodigo.Text;
            libro.Nombre = TextBoxNombre.Text;
            libro.Descripcion = TextBoxDescripcion.Text;
            libro.precioCompra = Convert.ToDouble(TextBoxPrecioCompra.Text);
            libro.precioVenta = Convert.ToDouble(TextBoxPrecioVenta.Text);
            libro.Editorial = TextBoxEditorial.Text;
            libro.Categotia = TextBoxCategoria.Text;
            libro.Autor = TextBoxAutor.Text;

            Libros.listaLibros.Add(libro);
            Libros.guardarenJson(archivo);
        }
    }
}