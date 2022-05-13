using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace LabRepaso2_Parcial2_
{
    public class Libros: Producto
    {
        public string Editorial { get; set; }
        public string Categotia { get; set; }
        public string Autor { get; set; }

        public static List<Libros> listaLibros = new List<Libros>();
        public static void guardarenJson(string archivo)
        {
            string json = JsonConvert.SerializeObject(listaLibros);
            System.IO.File.WriteAllText(archivo, json);
        }
        public static void leerJson(string archivo)
        {
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();
            listaLibros = JsonConvert.DeserializeObject<List<Libros>>(json);
        }
    }
}