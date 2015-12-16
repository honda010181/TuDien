<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TuDienVL.User.Login" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
      <div class="modal fade" id="loginModal" role="dialog">
        <div class="modal-dialog">
    
          <!-- Modal content-->

         <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                 <div class="row">
                       <asp:Label ID="lblMessage" runat="server" Visible="false"  Forecolor="Red"/>
                 </div>
                 <div id="UserName" class ="row">
                       <span>
                           <asp:TextBox ID="tbUserName" runat="server" class="form-control" placeholder="User Name"/>
     
                       </span>
                   </div>
                    <br />     
                   <div id="Password" class ="row">
                       <span>
                           <asp:TextBox ID="tbPassword" runat="server" class="form-control" placeholder="Password"/>
                       </span>  
                   </div>
                    <br />
                   <div id="Login" class ="row">
                       <asp:Button ID="btnLogin" runat="server"  class="btn btn-default"  Text="Submit" Height="33px" Width="85px" OnClick="btn_Login" />  
                   </div>    
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
      
        </div>
      </div>                          
                        
                        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentSection" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BodyResult" runat="server">
</asp:Content>
