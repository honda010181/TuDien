<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="TuDienVL.Add" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
        <div class="row">


            <div class="col-sm-11">

   
                           <div class="row">
                                <asp:Label ID="lbErrorMessage" runat="server" Visible="false" ForeColor="Red" ></asp:Label>
                           </div>


                            <div id="Word" class ="row">
                                <span>
                                    <asp:Label ID="lbWord" runat="server"  Text="Từ"  CssClass="def-padding"/>
                                    <asp:TextBox ID="tbWord" runat="server" class="form-control" placeholder="Từ"/>
 
                                </span>
                            </div>
 
                            <div id="WordType" class ="row">
                                <span>
                                    <asp:Label ID="lbWordType" runat="server"  Text="Từ Loại" CssClass="def-padding"/>
                                    <asp:TextBox ID="tbWordType" runat="server" class="form-control" placeholder="Từ Loại"/>
                                </span>  
                            </div>
            </div>
        </div>
        <div class="row">
            
            <div class="col-sm-11">
                        <div id="Definition" class ="row">
                            <span>
                                <asp:Label ID="lbDefinition" runat="server"  Text="Định Nghĩa"  CssClass="def-padding"/>
                                <asp:TextBox ID="tbDefinition" runat="server"  textmode ="MultiLine" class="form-control" placeholder="Định Nghĩa" Columns="6" Rows="5" />
                            </span>
                        </div>  

                        <div id="Example" class ="row">
                            <span>
                                <asp:Label ID="lbExample" runat="server"  Text="Cách Dùng"  CssClass="def-padding"/>
                                <asp:TextBox ID="tbExample" runat="server"  textmode ="MultiLine" class="form-control" placeholder="Cách Dùng" Columns="6" Rows="5" />
                            </span>  
                        </div>  

                        <div id="btnSubmit" class ="row">
                            <br />
                            <asp:Button ID="btnSumit" runat="server"   class="btn btn-default"   Text="Submit"  OnClick="btn_add" />  
                        </div>  
                </div>

        </div>

 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentSection" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BodyResult" runat="server">
</asp:Content>
