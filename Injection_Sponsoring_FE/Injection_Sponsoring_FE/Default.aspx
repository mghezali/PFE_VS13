<%@ Page Title="Nouvelle Commande" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Injection_Sponsoring_FE._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <br />
 <h4><%: Title %>.</h4>

    <div class="row">
        <div class="col-md-8">
            <section>
                <div class="form-horizontal">
             
                     <div class="form-group">
                        <Label class="col-md-2 control-label">ID Commande</Label>
                        <div class="col-md-6">
                            <input class="form-control"/>                           
                        </div>
                     </div>

                     <div class="form-group">
                        <Label class="col-md-2 control-label">Description</Label>
                        <div class="col-md-8">
                            <textarea class="form-control" rows="3"></textarea>                   
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
                            <asp:GridView ID="gridView" runat="server" OnPageIndexChanging="gridView_PageIndexChanging" AllowPaging="true"  ></asp:GridView>
                        </div>
                    </div>
                     <hr />
                    <table class="table table-striped table-hover ">
                          <thead>
                            <tr>
                              <th>#</th>
                              <th>Column heading</th>
                              <th>Column heading</th>
                              <th>Column heading</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>1</td>
                              <td>Column content</td>
                              <td>Column content</td>
                              <td>Column content</td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td>Column content</td>
                              <td>Column content</td>
                              <td>Column content</td>
                            </tr>
                               <tr>
                              <td>2</td>
                              <td>Column content</td>
                              <td>Column content</td>
                              <td>Column content</td>
                            </tr>
                            
                            
                          </tbody>
                        </table> 
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
