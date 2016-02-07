<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Injection_Sponsoring_FE.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
   


      <div class="col-md-15">
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
                        <div class="col-md-15">
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

                    </div>
                </section>
                </div>
</asp:Content>
