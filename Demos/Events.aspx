<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Demos_Events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Events Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ContentPlaceHolder id="head" runat="server">
        <table>
            <tr>
            <td><h1>No PostBack</h1><asp:Label ID="NoPostBack" runat="server" /></td>
            <td><h1>PostBack</h1><asp:Label ID="PostBack" runat="server" /></td>
            </tr>
        </table>
        </asp:ContentPlaceHolder>


       <asp:GridView ID="GridView1" runat="server" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False"
                    ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="SortOrder" HeaderText="SortOrder"
                    SortExpression="SortOrder" />
                </Columns>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>"
    SelectCommand="SELECT * FROM [Genre]"></asp:SqlDataSource>

     
    
    </div>
    </form>
</body>
</html>
