<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exportacoes.aspx.cs" Inherits="ProjectoFinal.Exportacoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:
            <asp:TextBox ID="tbNome" runat="server"></asp:TextBox>
            <br />
            Morada:
            <asp:TextBox ID="tbMorada" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btnExcel" runat="server" OnClick="btnExcel_Click" Text="Excel" />
            <asp:Button ID="btnWord" runat="server" OnClick="btnWord_Click" Text="Word" />
            <asp:Button ID="btnXml" runat="server" OnClick="btnXml_Click" Text="XML" />
            <asp:Button ID="btnPdf" runat="server" OnClick="btnPdf_Click" Text="PDF" />
        </div>
    </form>
</body>
</html>
