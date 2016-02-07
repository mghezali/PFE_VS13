<%@ Page Title="Nouvelle Commande" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Injection_Sponsoring_FE._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <br />
 <h4><%: Title %>.</h4>

    <div class="row">
        <div class="col-md-30">
            <section>
                <div class="form-horizontal">
             
                     <div class="form-group">
                        <Label class="col-md-2 control-label">ID Commande</Label>
                        <div class="col-md-4">
                            <input class="form-control"/>                           
                        </div>
                     </div>

                     <div class="form-group">
                        <Label class="col-md-2 control-label">Description</Label>
                        <div class="col-md-4">
                            <textarea class="form-control" rows="2"></textarea>                   
                        </div>
                     </div>

                  <hr />
                     <div class="form-group">
                        <Label class="col-md-2 control-label">Date Début</Label>
                        <div class="col-md-4">
                            <input type="date" class="form-control"/>                           
                        </div>
                     </div>

                     <div class="form-group">
                        <Label class="col-md-2 control-label">Date fin</Label>
                        <div class="col-md-4">
                            <input type="date" class="form-control"/>                           
                        </div>
                     </div>
              <hr />
                    <div class="form-group">
                        <asp:Label runat="server" ID="myLabel" CssClass="col-lg-2 control-label">My label</asp:Label>
                        <div class="col-md-10">
                            <div class="radio">
                                <label>
                                    <asp:RadioButtonList ID="typeSaisie" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
                                        <asp:ListItem Text="Saisir" Selected="True" Value="saisie"></asp:ListItem>
                                        <asp:ListItem Text="Charger&nbsp;Excel" Value="excel"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </label>
                            </div>
                        </div>
                        <div class="col-md-offset-2 col-md-10">
                            <asp:FileUpload runat="server" Text="Upload" ID="uploadFile" OnLoad="uploadFile_Load"></asp:FileUpload>
                            <asp:Button ID="uploadButton" runat="server" Text="Upload" OnClick="uploadButton_Click" />
                           
                        </div>
                    </div>
                     <hr />
                     <asp:GridView ID="gridView" runat="server" CssClass="table table-striped table-bordered table-hover" AllowPaging="true"
                         OnPageIndexChanging="gridView_PageIndexChanging">
                         <Columns>
                             <asp:TemplateField HeaderText="Colonne 1" InsertVisible="true">
                                 <ItemTemplate>
                                     <asp:TextBox ID="TextBoxColonne1" runat="server" Visible="true" Text='<%# Bind("Afifa") %>'></asp:TextBox>
                                 </ItemTemplate>
                             </asp:TemplateField>
                         </Columns>
                     </asp:GridView> 
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                             <button type="reset" class="btn btn-default">Annuler</button>
                             <button type="submit" class="btn btn-danger">Lancer</button>
                        </div>
                    </div>
                </div>
              
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </section>
        </div>
        
        
    </div>


</asp:Content>
