<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="TuDienVL.User.Account" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <asp:Label ID="lbDisplay" runat="server" Text="you have sucessfully login">
    </asp:Label>
    <asp:LoginView ID ="loginView" runat="server">
        <LoggedInTemplate>
            logged in
        </LoggedInTemplate>
        <AnonymousTemplate>
            yo yo
        </AnonymousTemplate>
    </asp:LoginView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentSection" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BodyResult" runat="server">
</asp:Content>
