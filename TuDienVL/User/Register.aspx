<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TuDienVL.User.Register" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">
</asp:Content>
<asp:Content ID="RegisterPanel" ContentPlaceHolderID="UserMangementPanel" runat="server">
 <style type="text/css">
    .def-padding{
        padding-left:20px;
    }

    .def-padding2{
        margin-left:200px;
    }
    .def-submitButton{
      height: 46px;
      padding: 5px 5px;
      font-size: 15px;
      line-height: 1.3333333;
      border-radius: 6px;
      background-color:white;
      margin-left: 20px;
      color: #333;
      background-color: #fff;
      border-color: #ccc;
    }

</style>

    <div  style="margin-top:20px;padding-top:60px; background-color:white" >
       <div class="container">
           <asp:Label ID="lbErrorMessage" runat="server" Visible="false" ForeColor="Red" >

           </asp:Label>
           <div class="div-divider" style="margin-top:50px"/> 
            <div id="UserName" class ="row">
                <span>
                    <asp:Label ID="lbUserName" runat="server"  Text="User Name"  CssClass="def-padding"/>
                    <asp:TextBox ID="tbUserName" runat="server"  style="margin-left:55px" />
                </span>
            </div>
           <div class="div-divider"/> 
           <div class="div-divider"/> 
            <div id="Password" class ="row">
                <span>
                    <asp:Label ID="lbPassword" runat="server"  Text="Password" CssClass="def-padding"/>
                    <asp:TextBox ID="tbPassword" runat="server" style="margin-left:64px"  />
                </span>  
            </div>
           <div class="div-divider"/> 
           <div class="div-divider"/>   
            <div id="ConfirmPassword" class ="row">
                <span>
                    <asp:Label ID="lbConfirmPassword" runat="server"  Text="Confirm Password"  CssClass="def-padding"/>
                    <asp:TextBox ID="tbConfirmPassword" runat="server"  style="margin-left:10px" />
                </span>  
            </div>  
           <div class="div-divider"/> 
           <div class="div-divider"/> 
            <div id="Email" class ="row">
                <span>
                    <asp:Label ID="lbEmail" runat="server"  Text="Email"  CssClass="def-padding"/>
                    <asp:TextBox ID="tbEmail" runat="server"   style="margin-left:90px" />
                </span>  
            </div>  
           <div class="div-divider"/>    
            <div id="btnSubmit" class ="row">
                <asp:Button ID="btnSumit" runat="server"  class="def-submitButton"  Text="Submit" Height="33px" Width="85px" OnClick="btn_register" />  
            </div>  
         </div>
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyResult" runat="server">
</asp:Content>
