<%@ Page Title="Source" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Source.aspx.cs" Inherits="$relurlnamespa
ce$_Source" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
       // Response.Redirect("Target?Test=SomeValue");
        Server.Transfer("Target.aspx?Test=SomeValue");
    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
</asp:Content>

