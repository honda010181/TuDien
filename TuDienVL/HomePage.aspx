﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TuDienVL.HomePage" %>
<%@ MasterType VirtualPath="~/MasterPage.Master" %>


<asp:Content ID="ContentSection" ContentPlaceHolderID="Body" runat="server">
         <asp:UpdatePanel ID="upMain" runat="server" UpdateMode="Conditional">
             <Triggers >
             </Triggers>
               <ContentTemplate>
                     <asp:ListView id="lvContent" runat="server"  OnSelectedIndexChanging="lvContent_SelectedIndexChanging" >
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
                            last_mod_date:=
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
                                 <asp:UpdatePanel ID ="UpdatePanel1" runat="server">
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ImageButtonThumpUp" EventName="Click" />
                                    </Triggers>
                                     <ContentTemplate>
                                         <div style="background-color:white; margin-left:0px">
                                            <div class="row" style="padding-left:15px">
                                                <asp:Label ID="Label4" runat="server" class ="def-word-header" Text='<%# Eval("word") %>' />
                                            </div>
                                            <div class="row" style="padding-left:15px">
                                                Định nghĩa: <asp:Label ID="Label5" runat="server" Text='<%# Eval("definition") %>' />
                                            </div>
                                            <div class="row" style="padding-left:15px">
                                                Cách dùng:
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("example") %>' />
                                            </div>
                                            <br />
                                            <div class="row" style="padding-left:15px">
                                                <div class="col-sm-8" style="padding:0px">
                                                    <asp:Label ID="Label7" runat="server" class ="def-author" Text='<%# Eval("user_name") %>' />
                                                    <asp:Label ID="Label8" runat="server"  class ="def-created-date"  Text='<%# Eval("last_mod_date") %>' />
                                                </div>
                                                <div class="col-sm-4">
                                                    <asp:ImageButton ID="ImageButtonThumpUp" runat="server" class="def-thumpUp" ImageUrl="~/Image/thumpUp.png" CommandName="Select"  CommandArgument='<%# Eval("ID") %>' OnCommand="ImageButton1_Command" />
                                                    <asp:Label ID="Label9" runat="server"  class="def-thumpUp"  Text='<%# Eval("up_vote") %>' />
                                                    <asp:ImageButton ID="ImageButtonThumpDown" runat="server" style="border-image-width: 10px; height:20px; width:20px; margin-top:-15px ;" ImageUrl="~/Image/thumpDown.png" CommandName="Select"  CommandArgument='<%# Eval("ID") %>'  OnCommand="ImageButtonThumpDown_Command"/>
                                                   
                                                    <asp:Label ID="Label10" runat="server"  class="def-thumpUp"  Text='<%# Eval("down_vote") %>' />                  
                                                </div>

                                            </div>
                                        </div>
                                     </ContentTemplate>
                                 </asp:UpdatePanel>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server" style="">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                            <div style="">
                            </div>
                        </LayoutTemplate>

                    </asp:ListView>

               </ContentTemplate>
         </asp:UpdatePanel>


</asp:Content>

