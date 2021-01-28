<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Etudiants.aspx.cs" Inherits="PrEx.Etudiants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="styles.css"/>
    <title>Gestion des etudiants</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDSEtudiants" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="numcarteetudiant" HeaderText="N° Carte d'étudiant" ReadOnly="True" SortExpression="numcarteetudiant" />
                    <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    <asp:BoundField DataField="Prénom" HeaderText="Prénom" SortExpression="Prénom" />
                    <asp:BoundField DataField="[Date de naissance]" HeaderText="Date de naissance" SortExpression="[Date de naissance]" DataFormatString="" />
                    <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
            <br />
        </div>
        <asp:SqlDataSource ID="SqlDSEtudiants" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Etudiant]"></asp:SqlDataSource>
    </form>
</body>
</html>
