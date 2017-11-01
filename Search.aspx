<%@ Page Title="Find a Doctor" Language="C#" MasterPageFile="~/MobileMaster.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="MedicaidProject.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div>
                    <p class="searchTop text-center">
                        Find a doctor, <i style="color: green">FAST!</i>
                        <img src="img/wheelchairdude.png" width="40" height="40" />
                    </p>
                </div>
                <form runat="server">
                    <div class="form-group">
                        <div id="dvSpecialties">
                            <asp:DropDownList ID="ddlSpecialties" CssClass="form-control" runat="server">
                                <asp:ListItem Value="0" Text="Choose a Specialty"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Primary Care Doctor"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Dermatologist"></asp:ListItem>
                                <asp:ListItem Value="3" Text="Optometrist"></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </div>
                        <div id="locationField">
                            <input id="autocomplete" class="form-control" placeholder="Enter address..."
                                onfocus="geolocate()" type="text" />
                        </div>
                        <br />
                        <div id="dvSearch" class="text-center">
                            <asp:Button ID="btnSearch" CssClass="btn btn-primary btn-block" Text="Search" runat="server" />
                        </div>


                    </div>
                </form>
            </div>
        </div>

    </div>


    <script>
        // This example displays an address form, using the autocomplete feature
        // of the Google Places API to help users fill in the information.

        // This example requires the Places library. Include the libraries=places
        // parameter when you first load the API. For example:
        // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

        var placeSearch, autocomplete;
        var componentForm = {
            street_number: 'short_name',
            route: 'long_name',
            locality: 'long_name',
            administrative_area_level_1: 'short_name',
            country: 'long_name',
            postal_code: 'short_name'
        };

        function initAutocomplete() {
            // Create the autocomplete object, restricting the search to geographical
            // location types.
            autocomplete = new google.maps.places.Autocomplete(
                /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
                { types: ['geocode'] });

            // When the user selects an address from the dropdown, populate the address
            // fields in the form.
            autocomplete.addListener('place_changed', fillInAddress);
        }

        function fillInAddress() {
            // Get the place details from the autocomplete object.
            var place = autocomplete.getPlace();

            for (var component in componentForm) {
                document.getElementById(component).value = '';
                document.getElementById(component).disabled = false;
            }

            // Get each component of the address from the place details
            // and fill the corresponding field on the form.
            for (var i = 0; i < place.address_components.length; i++) {
                var addressType = place.address_components[i].types[0];
                if (componentForm[addressType]) {
                    var val = place.address_components[i][componentForm[addressType]];
                    document.getElementById(addressType).value = val;
                }
            }
        }

        // Bias the autocomplete object to the user's geographical location,
        // as supplied by the browser's 'navigator.geolocation' object.
        function geolocate() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var geolocation = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };
                    var circle = new google.maps.Circle({
                        center: geolocation,
                        radius: position.coords.accuracy
                    });
                    autocomplete.setBounds(circle.getBounds());
                });
            }
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCXOGfyrqphDctDycvFcMv6eLNZc6AqWmU&libraries=places&callback=initAutocomplete"
        async defer></script>
</asp:Content>
