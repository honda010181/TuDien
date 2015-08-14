<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TuDienVL.User.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
  <div class="col-sm-5">
     <div id="UserName" class ="row">
           <span>
               <asp:Label ID="lbUserName" runat="server"  Text="User Name"  CssClass="def-padding"/>
               <asp:TextBox ID="tbUserName" runat="server" class="form-control" placeholder="User Name"/>
     
           </span>
       </div>
     
       <div id="Password" class ="row">
           <span>
               <asp:Label ID="lbPassword" runat="server"  Text="Password" CssClass="def-padding"/>
               <asp:TextBox ID="tbPassword" runat="server" class="form-control" placeholder="Password"/>
           </span>  
       </div>
       <div id="Login" class ="row">
           <asp:Button ID="btnLogin" runat="server"  class="def-submitButton"  Text="Submit" Height="33px" Width="85px" OnClick="btn_Login" />  
       </div>    

  </div>
                             
                        
                        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentSection" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BodyResult" runat="server">
</asp:Content>
