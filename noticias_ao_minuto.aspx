<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="noticias_ao_minuto.aspx.cs" Inherits="WebApplication1.noticias_ao_minuto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Xml ID="Xml1" runat="server" TransformSource="~/ultimas_3_noticias.xslt"></asp:Xml>
    </form>
</body>
</html>
