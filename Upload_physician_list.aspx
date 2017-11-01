<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Upload_physician_list.aspx.cs" Inherits="MedicaidProject.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
        
            <div class="col-md-12 well text-center">

      <label for="fileToUpload"><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload Physician List</span></label><br />
        <div class="col-xs-12">
      
           
    
        </div>
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">

      <label for="fileToUpload">Select a File to Upload
          <br />
          <br />
          <br />
          <div>
          <asp:FileUpload ID="FileUpload1" runat="server" Width="231px" />
                </div>
                </label>
                <br />
      
     <div id="filebutton">
        &nbsp;</div>


    &nbsp;</div>
            <div class="row">
      <input type="button" onclick="uploadFile()" value="Upload" />
    </div>
    </form>
</asp:Content>
