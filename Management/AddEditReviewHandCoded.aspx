<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEditReviewHandCoded.aspx.cs" Inherits="Management_AddEditReviewHandCoded" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Title<asp:Label ID="TitleText" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server" Width="450px"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="SummaryText" runat="server" Width="448px"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td>Body</td>
                <td>
                    <asp:TextBox ID="BodyText" runat="server" Width="446px"></asp:TextBox>
                </td>
                
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Genre"></asp:Label>
                 </td>
                <td>
                    <asp:DropDownList ID="GenreList" runat="server" DataTextField="Name"
                    DataValueField="Id" SelectMethod="GenreList_GetData">
                    </asp:DropDownList>
                 </td>
                
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                 </td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                 </td>
                
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
                 </td>
                
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
