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
                         <label class="col-lg-2 control-label">Radios</label>
                              <div class="col-md-10">
                                <div class="radio">
                                  <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                                    Saisir
                                  </label>
                                </div>
                                <div class="radio">
                                  <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Charger EXCEL
                                  </label>
                                </div>
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
