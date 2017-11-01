<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SearchPhysicians.aspx.cs" Inherits="MedicaidProject.WebForm1" %>

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
            margin-left: 200px
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="container">
        <h1 class="text-center">Search Physicians</h1>
        <div class="row">
        <div class="panel panel-default">
                <div class="col-md-2 center-block">
                    <asp:TextBox class="form-control" runat="server" text="First Name" />
                    <asp:TextBox class="form-control" runat="server" Text="Last Name" />
                </div><%--end phys column--%>
                <div class="col-md-2 center-block">
                    <asp:TextBox class="form-control" runat="server" Text="NPI" />
                    <asp:DropDownList class="form-control"  runat="server">
                        <asp:ListItem>Specialty</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-2 center-block">
                    <asp:DropDownList CssClass="form-control" runat="server">
                        <asp:ListItem>State</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList Cssclass="form-control"  runat="server">
                        <asp:ListItem>City</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList Cssclass="form-control" runat="server">
                        <asp:ListItem>Zip Code</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                        <asp:ListItem>Test</asp:ListItem>
                    </asp:DropDownList>
                    </div> <%--end loc column--%>
                <div class="col-md-2 center-block">
                    <asp:Textbox class="form-control" runat="server" Text="Practice Name" />
                    <asp:TextBox class="form-control" runat="server" Text="Address" />
                </div> <%--end loc column--%>
                <div class="col-md-2 center-block">
                    <asp:CheckBox CssClass="checkbox-inline" text="Active" runat="server"/>
                    <asp:CheckBox CssClass="checkbox-inline" Text="Flagged" runat="server" />
                </div>
                <div class="col-md-2 center-block">
                    <asp:CheckBox CssClass="checkbox-inline" Text="Not Active" runat="server" />
                    <asp:CheckBox CssClass="checkbox-inline" Text="Not Flagged" runat="server" />
                </div><%--end checkbox column--%>
        </div> <%--end row--%>
        </div>
        </div><%--end panel--%>
    


   <div>
      <asp:GridView ID="gvPhysicianSearch" CssClass="table table-bordered table-hover" AutoGenerateColumns="false" runat="server">
          <Columns>
              <asp:TemplateField HeaderText="Select"> 
                  <ItemTemplate>
                      <asp:CheckBox id="cbxSelPhysicanRow" runat="server"/>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:BoundField DataField="fName" HeaderText="First Name"/>
              <asp:BoundField DataField="lName" HeaderText="Last Name" />
              <asp:BoundField DataField="NPI" HeaderText="NPI" />
              <asp:BoundField DataField="address" HeaderText="Address" />
              <asp:BoundField DataField="practiceName" HeaderText="Practice Name"/>
              <asp:BoundField DataField="specialty" HeaderText="Specialty" />
              <asp:BoundField DataField="city" HeaderText="City" />
              <asp:BoundField DataField="state" HeaderText="State" />
              <asp:BoundField DataField="isActive" HeaderText="Active Status" />
              <asp:BoundField DataField="flagCount" HeaderText="Flag Count" />
              <asp:TemplateField>
                  <ItemTemplate>
                      <asp:Button id="btnEdit" Text="Edit" runat="server"/>
                  </ItemTemplate>
              </asp:TemplateField>
                            <asp:TemplateField>
                  <ItemTemplate>
                      <asp:Button id="btnChange" Text="Deactivate" runat="server"/>
                  </ItemTemplate>
              </asp:TemplateField>
           </Columns>
      </asp:GridView>
   </div>
   <div class="row">
       <div class="col-lg-2">
           <asp:Button ID="btnSelAll" Text="Select All" CssClass="center-block btn btn-info" runat="server" />
       </div>
       <div class="col-lg-2">
           <asp:Button ID="btnDeselAll" text="Deselect All" CssClass="pull-left btn btn-info" runat="server" />
       </div>
       <div class="col-lg-4">
           <asp:Button ID="btnDownload" Text="Download List" class="center-block btn btn-primary" runat="server" />
       </div>
       <div class="col-lg-4">

       </div>
   </div>

        </form>
</asp:Content>
