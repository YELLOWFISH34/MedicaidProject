<%@ Page Title="" Language="C#" MasterPageFile="~/MobileMaster.Master" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="MedicaidProject.SearchResults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .list-group{
        width: 100%;
    }
    .bs-example{
        margin: 20px;
    }
    /*.list-group-item img{
    
    float:right;
    }*/
    .list-group-item{
    min-height:150px;
    
    }
    
    .bs-example{
      
    }
    
    /*.header{
     min-height:100px;
        background-color: #990033;
    }*/
    
    
    .footer{
    background-color:blue;
    min-height:100px;
        width:100%;
    }
    
    .glyphicon{
    font-size:50px;
    }
    
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bs-example col-md-4 col-md-offset-2">
    <div class="list-group">
        <%--<a href="#" class="list-group-item">
            
            Doctor Name<br />
            Address<br/>
            etc
        </a>--%>
       
        
    </div>
</div>
    
    <script>
        
        for(var i=0;i<5;i++){
var div = $('<a href="/physicianinfo.aspx" class="list-group-item"></div></br> Dr. Brian Tran <br/> Primary Care Doctor <br/> 703 Cecil B Moore Ave, Philadelphia, PA<br/>19122</br></a>');
$(".list-group").append(div);
}
        
    </script>


</asp:Content>
