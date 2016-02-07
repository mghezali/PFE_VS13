<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Injection_Sponsoring_FE.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>

    <div class="col-md-8">
        <section>
            <div class="form-horizontal">

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Email2" CssClass="col-md-2 control-label">Email</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="Email2" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email2"
                            CssClass="text-danger" ErrorMessage="The email field is required." />
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="Email2"
                            CssClass="text-danger" ErrorMessage="Invalid format."
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Dated" CssClass="col-md-2 control-label">Date début</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="Dated" CssClass="form-control" TextMode="Date" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Dated"
                            CssClass="text-danger" ErrorMessage="The date field is required." />
                        <asp:CompareValidator runat="server"
                            ID="CompareValidator1"
                            ControlToValidate="Dated"
                            CssClass="text-danger"
                            ErrorMessage="The date must be on or after current date"
                            Operator="GreaterThanEqual"
                            Type="Date"></asp:CompareValidator>

                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Datef" CssClass="col-md-2 control-label">Date fin</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="Datef" CssClass="form-control" TextMode="Date" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Datef"
                            CssClass="text-danger" ErrorMessage="The date field is required." />
                        <asp:CompareValidator runat="server"
                            ID="CompareValidator2"
                            ControlToCompare="DateD"
                            ControlToValidate="Datef"
                            CssClass="text-danger"
                            ErrorMessage="The expiry date must be on or after start date"
                            Operator="GreaterThanEqual"
                            Type="Date"></asp:CompareValidator>

                    </div>
                </div>
               
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-danger" />
                    </div>
                </div>

                <hr />

            </div>
        </section>
    </div>
</asp:Content>
