<%@ Page Title="" Language="C#" MasterPageFile="~/MobileMaster.Master" AutoEventWireup="true" CodeBehind="Physicianinfo.aspx.cs" Inherits="MedicaidProject.Physicianinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
       
.list-group{
width: 200px;
}
.bs-example{
margin: 20px;
}


.glyphicon{
font-size:50px;
}


.footer{
background-color:blue;
min-height:110px;
width:100%;
position:relative;
position:0
}

.glyphicon-container{
width: 100%;
border: 1px solid #000;
background-color: #555;
padding:0;
margin:0;
box-sizing: border-box;
position:fixed;
bottom:0;

}

.item{
/*width: 33%;*/
height: 75px;


display:inline-block;
text-align: center;

}


.item:hover{
background-color: #000;

}

.item span{

line-height: 75px;
}
.glyphicon-container a{
color:inherit;
}
.profcontainer{
padding:15px;
}

#map{
margin-bottom:75;
margin-top:0;
padding:0;
display:flex;
}



    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
    <div class="profcontainer well">
        Brian Tran<br />
        Primary Care Doctor<br />
        703 Cecil B Moore Ave, Philadelphia, PA<br/>
        19122

    </div>

   

    
    <div id="map">
        <iframe
            width="100%"
            height="365"
            frameborder="0" style="border: 0"
            src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDnkmCEsSjrdFU2DzaJ5H0jLdBd5l9BP7g
    &q=excel+medical+center,Philadelphia+PA"
            allowfullscreen></iframe>
    </div>

    <div class="glyphicon-container">
        <a href="#">

            <div class="item col-xs-4">
                <span class="glyphicon glyphicon-earphone"></span>

            </div>
        </a>
        <a href="search.aspx">
        <div class="item col-xs-4">
            <span class="glyphicon glyphicon-home"></span>
        </div>
            </a>

        <a href="ReportAProblem.aspx">
        <div class="item col-xs-4">
            <span class="glyphicon glyphicon-flag"></span>
        </div>
            </a>

    </div>





</asp:Content>
