using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabRepaso2_Parcial2_
{
    public partial class Actualizar_Eliminar : System.Web.UI.Page
    {
        static string codigoSeleccionado;
        static Libros libro;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string archivo = Server.MapPath("Datos.json");
                Libros.listaLibros.Clear();
                Libros.leerJson(archivo);
            }
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            codigoSeleccionado = TextBoxCodigo.Text;
            libro = Libros.listaLibros.Find(x => x.codigo == codigoSeleccionado);
            if (libro == null) { }
            else
            {
                TextBoxNombre.Text = libro.Nombre;
                TextBoxCompra.Text = libro.precioCompra.ToString();
                TextBoxVenta.Text = libro.precioVenta.ToString();
            }
        }

        protected void ButtonActualizar_Click(object sender, EventArgs e)
        {
            libro.Nombre = TextBoxNombre.Text;
            libro.precioCompra = Convert.ToDouble(TextBoxCompra.Text);
            libro.precioVenta = Convert.ToDouble(TextBoxVenta.Text);
            string archivo = Server.MapPath("Datos.json");
            Libros.guardarenJson(archivo);
        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {
            int posicion = Libros.listaLibros.FindIndex(x => x.codigo==codigoSeleccionado);
            Libros.listaLibros.RemoveAt(posicion);
            string archivo = Server.MapPath("Datos.json");
            Libros.guardarenJson(archivo);
        }
    }
}