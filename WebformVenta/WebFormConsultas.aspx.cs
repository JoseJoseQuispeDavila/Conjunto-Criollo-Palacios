using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlgrebaLineal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSeleccion1_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from P in ventas.TProducto
                           select P;
            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnSeleccion2_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from P in ventas.TVendedor
                           select P;
            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnSeleccion3_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from P in ventas.TDetalle
                           select P;
            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnProyeccion1_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from C in ventas.TCliente
                           select new { C.Nombres, C.Apellidos, C.Direccion };
            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnProyeccion2_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from T in ventas.TProducto
                           select new { T.CodProduto, T.Precio };
            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnProyeccion3_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from C in ventas.TCategoria
                           select new { C.CodCategoria, C.Nombre };
            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnRenombramiento1_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from C in ventas.TCategoria
                           select new
                           {
                               IdentificadorCategoria = C.CodCategoria,
                               NombreDeCategoria = C.Nombre
                           };

            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnRenombramiento2_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from P in ventas.TProducto
                           select new
                           {
                               CodigoProducto = P.CodProduto,
                               NombreProducto = P.Nombre,
                               PrecioUnitario = P.Precio,
                               CantidadEnStock = P.Stock,
                               CodigoDeCategoria = P.CodCategoria
                           };

            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnRenombramiento3_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from CL in ventas.TCliente
                           select new
                           {
                               NumeroCliente = CL.CodCliente,
                               NombresDelCliente = CL.Nombres,
                               ApellidosDelCliente = CL.Apellidos,
                               DireccionDelCliente = CL.Direccion
                           };

            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnUnion1_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();

            var nombresClientes = from C in ventas.TCliente
                                  select new { NombreCompleto = C.Nombres + " " + C.Apellidos };

            var nombresVendedores = from V in ventas.TVendedor
                                    select new { NombreCompleto = V.Nombres + " " + V.Apellidos };

            var todosLosNombres = nombresClientes.Union(nombresVendedores).ToList();

            gvConsulta.DataSource = todosLosNombres;
            gvConsulta.DataBind();
        }

        protected void btnUnion2_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();

            var vendedoresConS = from V in ventas.TVendedor
                                 where V.Nombres.StartsWith("S")
                                 select new { NombreCompleto = V.Nombres + " " + V.Apellidos };

            var vendedoresConP = from VE in ventas.TVendedor
                                 where VE.Apellidos.StartsWith("P")
                                 select new { NombreCompleto = VE.Nombres + " " + VE.Apellidos };

            var vendedoresSyP = vendedoresConS.Union(vendedoresConP).ToList();

            gvConsulta.DataSource = vendedoresSyP;
            gvConsulta.DataBind();
        }

        protected void btnUnion3_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();

            var categoriasCalzado = from C in ventas.TCategoria
                                    where C.Nombre == "Calzado"
                                    select new { NombreCategoria = C.Nombre };

            var categoriasEmbutidos = from CA in ventas.TCategoria
                                      where CA.Nombre == "Embutidos"
                                      select new { NombreCategoria = CA.Nombre };

            var categoriasCalzadoYEmbutidos = categoriasCalzado.Union(categoriasEmbutidos).ToList();

            gvConsulta.DataSource = categoriasCalzadoYEmbutidos;
            gvConsulta.DataBind();
        }

        protected void btnDiferencia1_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from p in ventas.TProducto
                           where !(ventas.TDetalle.Select(d => d.CodProducto).Contains(p.CodProduto))
                           select p;

            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnDiferencia2_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();

            var consulta = from c in ventas.TCategoria
                           where !(ventas.TProducto.Select(p => p.CodCategoria).Contains(c.CodCategoria))
                           select c;

            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnDiferencia3_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();

            var consulta = from c in ventas.TCliente
                           where !(ventas.TBoleta.Select(b => b.CodCliente).Contains(c.CodCliente))
                           select c;

            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnProducto1_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from cliente in ventas.TCliente
                           from boleta in ventas.TBoleta
                           select cliente;
            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnProducto2_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from detalle in ventas.TDetalle
                           from boleta in ventas.TBoleta
                           select detalle;
            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }

        protected void btnProducto3_Click(object sender, EventArgs e)
        {
            BDVentasEntities ventas = new BDVentasEntities();
            var consulta = from vendedor in ventas.TVendedor
                           from boleta in ventas.TBoleta
                           select vendedor;
            gvConsulta.DataSource = consulta.ToList();
            gvConsulta.DataBind();
        }
    }
    
}
