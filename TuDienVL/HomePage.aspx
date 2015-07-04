<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TuDienVL.HomePage" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>


<asp:Content ID="ContentSection" ContentPlaceHolderID="ContentSection" runat="server">
        <asp:ListView id="lvContent" runat="server" >
        <EditItemTemplate>
            <span style="">word:
            <asp:TextBox ID="wordTextBox" runat="server" Text='<%# Bind("word") %>' />
            <br />
            definition:
            <asp:TextBox ID="definitionTextBox" runat="server" Text='<%# Bind("definition") %>' />
            <br />
            tu_loai_code:
            <asp:TextBox ID="tu_loai_codeTextBox" runat="server" Text='<%# Bind("tu_loai_code") %>' />
            <br />
            user_name:
            <asp:TextBox ID="user_nameTextBox" runat="server" Text='<%# Bind("user_name") %>' />
            <br />
            last_mod_date:
            <asp:TextBox ID="last_mod_dateTextBox" runat="server" Text='<%# Bind("last_mod_date") %>' />
            <br />
            up_vote:
            <asp:TextBox ID="up_voteTextBox" runat="server" Text='<%# Bind("up_vote") %>' />
            <br />
            down_vote:
            <asp:TextBox ID="down_voteTextBox" runat="server" Text='<%# Bind("down_vote") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>Chúng tôi không tìm được từ này.
              <br />    Bạn có thể viết định nghĩa của chính mình, và xem bao nhiêu người đồng ý với mình.
            </span>

        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">word:
            <asp:TextBox ID="wordTextBox" runat="server" Text='<%# Bind("word") %>' />
            <br />definition:
            <asp:TextBox ID="definitionTextBox" runat="server" Text='<%# Bind("definition") %>' />
            <br />tu_loai_code:
            <asp:TextBox ID="tu_loai_codeTextBox" runat="server" Text='<%# Bind("tu_loai_code") %>' />
            <br />user_name:
            <asp:TextBox ID="user_nameTextBox" runat="server" Text='<%# Bind("user_name") %>' />
            <br />last_mod_date:
            <asp:TextBox ID="last_mod_dateTextBox" runat="server" Text='<%# Bind("last_mod_date") %>' />
            <br />up_vote:
            <asp:TextBox ID="up_voteTextBox" runat="server" Text='<%# Bind("up_vote") %>' />
            <br />down_vote:
            <asp:TextBox ID="down_voteTextBox" runat="server" Text='<%# Bind("down_vote") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="container" style="background-color:white">
                <div class="row">
                    <asp:Label ID="wordLabel" runat="server" class ="def-word-header" Text='<%# Eval("word") %>' />
                </div>
                <div class="row">
                    Từ loại: <asp:Label ID="tu_loai_codeLabel" runat="server" Text='<%# Eval("tu_loai_code") %>' />
                </div>
                <div class="row">
                    Định nghĩa: <asp:Label ID="lbDefinition" runat="server" Text='<%# Eval("definition") %>' />
                </div>
                <div class="row">
                    Cách dùng:
                    <asp:Label ID="lbExample" runat="server" Text='<%# Eval("example") %>' />
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-4" style="padding:0px">
                        <asp:Label ID="lbUserName" runat="server" class ="def-author" Text='<%# Eval("user_name") %>' />
                        <asp:Label ID="last_mod_dateLabel" runat="server"  class ="def-created-date"  Text='<%# Eval("last_mod_date") %>' />
                    </div>
                    <div class="col-sm-4">
                        <asp:Image ID="Image2" runat="server" class="def-thumpUp" ImageUrl="~/Image/thumpUp.png" />
                        <asp:Label ID="Label1" runat="server"  class="def-thumpUp"  Text='<%# Eval("up_vote") %>' />
                        <asp:Image ID ="Image3" runat="server"  class="def-thumpUp"  ImageUrl="~/Image/thumpUp.png" />
                        <asp:Label ID="Label2" runat="server"  class="def-thumpUp"  Text='<%# Eval("down_vote") %>' />                  
                    </div>

                </div>
            </div>
            <div class="div-divider"></div>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">word:
            <asp:Label ID="wordLabel" runat="server" Text='<%# Eval("word") %>' />
            <br />
            definition:
            <asp:Label ID="definitionLabel" runat="server" Text='<%# Eval("definition") %>' />
            <br />
            tu_loai_code:
            <asp:Label ID="tu_loai_codeLabel" runat="server" Text='<%# Eval("tu_loai_code") %>' />
            <br />
            user_name:
            <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
            <br />
            last_mod_date:
            <asp:Label ID="last_mod_dateLabel" runat="server" Text='<%# Eval("last_mod_date") %>' />
            <br />
            up_vote:
            <asp:Label ID="up_voteLabel" runat="server" Text='<%# Eval("up_vote") %>' />
            <br />
            down_vote:
            <asp:Label ID="down_voteLabel" runat="server" Text='<%# Eval("down_vote") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>

    </asp:ListView>


</asp:Content>

