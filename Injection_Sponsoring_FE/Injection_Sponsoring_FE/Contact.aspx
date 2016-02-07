<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Injection_Sponsoring_FE.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    
    <div class="row">
        <div class="col-md-6">
            <section>
                <div class="form-horizontal">

                    <div class="form-group">
                        <label class="col-md-4 control-label">ID Commande</label>
                        <div class="col-md-4">
                            <input class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md- control-label">Description</label>
                        <div class="col-md-6">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-6">
            <section>
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-2 control-label">Date Début</label>
                        <div class="col-md-4">
                            <input type="date" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Date fin</label>
                        <div class="col-md-4">
                            <input type="date" class="form-control" />
                        </div>
                    </div>
                </div>
            </section>
        </div>

    </div>
</asp:Content>
