<%@ Page Title="Report a Problem" Language="C#" MasterPageFile="~/MobileMaster.Master" AutoEventWireup="true" CodeBehind="ReportAProblem.aspx.cs" Inherits="MedicaidProject.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h3 class="page-header">Report a Problem About:</h3>
                <div id="doctorInfo" class="well">
                    <p class="doctorInfo">
                        Dr. Brian Tran
                        <br />
                        Primary Care Doctor
                        <br />
                        208 Cheltan Ave, Philadelphia, PA
                    </p>
                    <br />
                </div>
                <form runat="server">
                    <div class="form-group text-center">
                        <asp:Button ID="btnDoesntAccept" class="btn btn-danger btn-block btnReport" runat="server" Text="Doesn't Accept Medicaid" />
                        <br />
                        <asp:Button ID="btnIncorrectInformation" class="btn btn-warning btn-block btnReport" runat="server" Text="Incorrect Information" />
                        <br />
                        <asp:Button ID="btnDidntAnswer" class="btn btn-primary btn-block btnReport" runat="server" Text="Didn't Answer Calls" />
                    </div>
                </form>
            </div>
        </div>

    </div>

</asp:Content>
