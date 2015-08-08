<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="TuDienVL.User.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserMangementPanel" runat="server">
    <asp:Label ID="lblWelcome" runat="server" Text="Account của bạn đã được tạo ra. Click login để đăng nhập. " />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentSection" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BodyResult" runat="server">
</asp:Content>
