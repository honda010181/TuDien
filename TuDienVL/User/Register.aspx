<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TuDienVL.User.Register" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="RegisterPanel" ContentPlaceHolderID="Body" runat="server">
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

        <div class="col-sm-5">

            <div class="row">
                       <div class="row">
                            <asp:Label ID="lbErrorMessage" runat="server" Visible="false" ForeColor="Red" ></asp:Label>
                       </div>


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

                        <div id="ConfirmPassword" class ="row">
                            <span>
                                <asp:Label ID="lbConfirmPassword" runat="server"  Text="Confirm Password"  CssClass="def-padding"/>
                                <asp:TextBox ID="tbConfirmPassword" runat="server" class="form-control" placeholder="Confirm Password"/>
                            </span>
                        </div>  

                        <div id="Email" class ="row">
                            <span>
                                <asp:Label ID="lbEmail" runat="server"  Text="Email"  CssClass="def-padding"/>
                                <asp:TextBox ID="tbEmail" runat="server"   class="form-control" placeholder="Email"/>
                            </span>  
                        </div>  

                        <div id="btnSubmit" class ="row">
                            <asp:Button ID="btnSumit" runat="server"   class="btn btn-default"   Text="Submit"  OnClick="btn_register" />  
                        </div>  



            </div>
        </div>


</asp:Content>
