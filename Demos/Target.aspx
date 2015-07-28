<%@ Page Title="Target" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Target.aspx.cs" Inherits="$relurlnamespa
ce$_Target" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.QueryString.ToString();
    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>

