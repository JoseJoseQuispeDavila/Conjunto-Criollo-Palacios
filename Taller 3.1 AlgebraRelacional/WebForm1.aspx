<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AlgebraRelacional.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Título general -->
            <asp:Label ID="lblTitulo" runat="server" Text="Operaciones Unarias" Font-Bold="true" Font-Size="X-Large" /><br /><br />

            <!-- Selección (σ) -->
            <asp:Label ID="lblSeleccion" runat="server" Text="Selección (σ)" Font-Bold="true" Font-Size="Large" /><br />
            <asp:Button Text="Selección 1: Tabla Producto " runat="server" ID="btnSeleccion1" OnClick="btnSeleccion1_Click" />
            <asp:Button Text="Selección 2: Tabla Vendedor" runat="server" ID="btnSeleccion2" OnClick="btnSeleccion2_Click" />
            <asp:Button Text="Selección 3: Tabla Detalle" runat="server" ID="btnSeleccion3" OnClick="btnSeleccion3_Click" />
            <br /><br />

            <!-- Proyección (π) -->
            <asp:Label ID="lblProyeccion" runat="server" Text="Proyección (π)" Font-Bold="true" Font-Size="Large" /><br />
            <asp:Button Text="Proyección 1: Nombres y Apellidos de Clientes" runat="server" ID="btnProyeccion1" OnClick="btnProyeccion1_Click" />
            <asp:Button Text="Proyección 2: Códigos y Precios de Productos" runat="server" ID="btnProyeccion2" OnClick="btnProyeccion2_Click" />
            <asp:Button Text="Proyección 3: Categorías de Productos" runat="server" ID="btnProyeccion3" OnClick="btnProyeccion3_Click" />
            <br /><br />

            <!-- Renombramiento (ρ) -->
            <asp:Label ID="lblRenombramiento" runat="server" Text="Renombramiento (ρ)" Font-Bold="true" Font-Size="Large" /><br />
            <asp:Button Text="Renombramiento 1: Renombrar columnas de la tabla Categoria" runat="server" ID="btnRenombramiento1" OnClick="btnRenombramiento1_Click" />
            <asp:Button Text="Renombramiento 2: Renombrar columnas de la tabla Producto" runat="server" ID="btnRenombramiento2" OnClick="btnRenombramiento2_Click" />
            <asp:Button Text="Renombramiento 3: Renombrar columnas de la tabla Cliente" runat="server" ID="btnRenombramiento3" OnClick="btnRenombramiento3_Click" />
            <br /><br />

            <!-- Operaciones Binarias -->
            <asp:Label ID="lblBinarias" runat="server" Text="Operaciones Binarias" Font-Bold="true" Font-Size="X-Large" /><br /><br />

            <!-- Unión (∪) -->
            <asp:Label ID="lblUnion" runat="server" Text="Unión (∪)" Font-Bold="true" Font-Size="Large" /><br />
            <asp:Button Text="Unión 1: Uniendo nombres de clientes y vendedores" runat="server" ID="btnUnion1" OnClick="btnUnion1_Click"  />
            <asp:Button Text="Unión 2: Unión de vendedores por inicio de nombre/apellido." runat="server" ID="btnUnion2" OnClick="btnUnion2_Click" />
            <asp:Button Text="Unión 3: Unión de categorías Calzado y Embutidos" runat="server" ID="btnUnion3" OnClick="btnUnion3_Click" />
            <br /><br />

            <!-- Diferencia (−) -->
            <asp:Label ID="lblDiferencia" runat="server" Text="Diferencia (−)" Font-Bold="true" Font-Size="Large" /><br />
            <asp:Button Text="Diferencia 1: Productos que no están en detalles de boletas/pedidos" runat="server" ID="btnDiferencia1" OnClick="btnDiferencia1_Click" />
            <asp:Button Text="Diferencia 2: Productos que no están en detalles de boletas/pedidos" runat="server" ID="btnDiferencia2" OnClick="btnDiferencia2_Click" />
            <asp:Button Text="Diferencia 3: Clientes que nunca han comprado (no tienen boletas)" runat="server" ID="btnDiferencia3" OnClick="btnDiferencia3_Click" />
            <br /><br />

            <!-- Producto Cartesiano (×) -->
            <asp:Label ID="lblProducto" runat="server" Text="Producto Cartesiano (×)" Font-Bold="true" Font-Size="Large" /><br />
            <asp:Button Text="Producto 1: Producto Cartesiano: Clientes x Boletas" runat="server" ID="btnProducto1" OnClick="btnProducto1_Click" />
            <asp:Button Text="Producto 2: Producto Cartesiano: Detalles x Boletas" runat="server" ID="btnProducto2" OnClick="btnProducto2_Click" />
            <asp:Button Text="Producto 3: Producto Cartesiano: Vendedores x Boletas" runat="server" ID="btnProducto3" OnClick="btnProducto3_Click" />
            <br /><br />

            <!-- Resultado -->
<asp:GridView runat="server" ID="gvConsulta"></asp:GridView>
        </div>
    </form>
</body>
</html>
