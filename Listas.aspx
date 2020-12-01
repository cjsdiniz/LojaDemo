<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listas.aspx.cs" Inherits="ProjectoFinal.Listas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:
            <asp:TextBox ID="tbNome" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            Morada:
            <asp:TextBox ID="tbMorada" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
        <p>Lista de livros por Autor</p>
        <asp:GridView ID="grvPorAutorT" runat="server"  align="center" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="sqlDSporAutor" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="grvPorAutorT_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="AutorNome" HeaderText="Autor" SortExpression="AutorNome" />
                <asp:BoundField DataField="LivroTitulo" HeaderText="Titulo" SortExpression="LivroTitulo" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="sqlDSporAutor" runat="server" ConnectionString="<%$ ConnectionStrings:citeformaCS %>" SelectCommand="sp_livros_por_autor" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:Button ID="btnPDF" runat="server" BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" CausesValidation="False" OnClick="btnPDF_Click" Text="Exportar para PDF" style="height: 25px" />
    </form>
    

</body>
</html>
