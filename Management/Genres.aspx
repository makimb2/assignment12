<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Genres.aspx.cs" Inherits="Management_Genres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id"
            DataSourceID="SqlDataSource1" GridLines="None" CellPadding="4"
            ForeColor="#333333" EmptyDataText="There are no data records to display.">
        <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"
             ShowSelectButton="False" ItemStyle-Width="100px" />
        <asp:BoundField DataField="Name" HeaderText="Name"
            SortExpression="Name" ItemStyle-Width="200px" />
        <asp:BoundField DataField="SortOrder" HeaderText="Sort Order"
            SortExpression="SortOrder"></asp:BoundField>
        </Columns>
        
        <asp:LinkButton ID="DeleteLink" runat="server" CausesValidation="False"
        CommandName="Delete" Text="Delete"></asp:LinkButton>


        <script>
            $(function()
            {
            $('.GridView tr:odd:not(.GridViewPagerStyle)').
            addClass('GridViewAlternatingRowStyle');
            });
        </script>   

        SelectCommand="SELECT Genre.Id, Genre.Name, Genre.SortOrder,
        COUNT(Review.Id) AS NumberOfReviews FROM Genre LEFT OUTER JOIN Review
        ON Genre.Id = Review.GenreId GROUP BY Genre.Id, Genre.Name, Genre.SortOrder"

        </asp:GridView>
    
    </div>
        <asp:Label ID="ErrorMessage" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
