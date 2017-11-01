<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditPhysician.aspx.cs" Inherits="MedicaidProject.EditPhysician" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
            margin-top: 5%;
        }

            .container * {
                margin: 5px 10px;
            }

        #Physician {
            border: solid thin red;
        }

        form {
            margin-left: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" cssclass="form-horizontal">
        <div class="container">
            <h1 class="text-center">Edit Physician</h1>
            <div class="well">
                <div class="row">
                    <div id="Physician" runat="server">
                        <div class="form-group form-inline">
                            <h4>Physcian</h4>
                            <asp:Label ID="lblNPIKey" runat="server" CssClass="control-label" Text="NPI Number: "></asp:Label>
                            <asp:TextBox ID="txtNPIKey" CssClass="form-control" runat="server" Text="1234"></asp:TextBox>
                            <br />
                            <asp:Label ID="lblPrefix" runat="server" CssClass="control-label" Text="Prefix "></asp:Label>
                            <asp:DropDownList ID="ddlPrefix" runat="server" CssClass="form-control">
                                <asp:ListItem>Dr</asp:ListItem>
                                <asp:ListItem>Test</asp:ListItem>
                                <asp:ListItem>Test</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="lblFName" runat="server" CssClass="control-label" Text="First Name: "></asp:Label>
                            <asp:TextBox ID="txtFName" runat="server" CssClass="form-control" Text="Brian"></asp:TextBox>
                            <asp:Label ID="lblLName" runat="server" CssClass="control-label" Text="Last Name: "></asp:Label>
                            <asp:TextBox ID="txtLName" runat="server" CssClass="form-control" Text="Kim"></asp:TextBox>
                            <br />
                            <asp:Label ID="lblSpecialty" runat="server" CssClass="control-label" Text="Speciality"></asp:Label>
                            <asp:DropDownList ID="ddlSpecialty" CssClass="form-control" runat="server">
                                <asp:ListItem>Dentist</asp:ListItem>
                                <asp:ListItem>Test</asp:ListItem>
                                <asp:ListItem>Test</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div id="Location" runat="server" style="margin-top: 10px">
                        <div class="form-group">
                            <h4>Location</h4>
                            <asp:Label ID="lblAddress1" runat="server" Text="Street Address Line 1: " CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" Text="1809 Market St"></asp:TextBox>
                            <br />
                            <div class="clearfix"></div>
                            <asp:Label ID="lblAddress2" runat="server" Text="Street Address Line 2: " CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" Text="Room 20"></asp:TextBox>
                            <br />
                        </div>
                        <div class="form-inline">
                            <asp:Label ID="lblCity" runat="server" Text="City: " CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" Text="Philadelphia"></asp:TextBox>
                            <asp:Label ID="lblState" runat="server" Text="State: " CssClass="control-label"></asp:Label>
                            <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
                                <asp:ListItem>State</asp:ListItem>
                                <asp:ListItem>PA</asp:ListItem>
                                <asp:ListItem>Test</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="lblZipcode" runat="server" Text="Zip Code:" CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtZipcode" runat="server" CssClass="form-control" Text="19103"></asp:TextBox>
                            <br />
                            <asp:Label ID="lblPracticeName" runat="server" Text="Practice Name: " CssClass="control-label"></asp:Label>
                            <asp:TextBox ID="txtPracticeName" runat="server" CssClass="form-control" Text="Brian Kim Practice"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5"></div>
                <div class="col-lg-4">
                    <asp:Button ID="btnSave" CssClass="btn btn-primary center-block" runat="server" Text="Save" />
                </div>
                <div class="col-lg-3"></div>
            </div>
        </div>
    </form>
</asp:Content>
