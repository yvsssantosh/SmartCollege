<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageForAll.master" AutoEventWireup="true" CodeFile="Class102.aspx.cs" Inherits="Class102" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<!--  
The HTML <span> Element
The HTML <span> element is an inline element that can be used as a container for text.
The <span> element has no special meaning. It has no required attributes, but style and class are common.
Unlike <div>, which is formatted with line breaks, the <span> element does not have any automatic formatting.
When used together with CSS, the <span> element can be used to style parts of the text:

Example
<h1>My <span style="color:red">Important</span>Heading</h1>
HTML Classes
Classing HTML elements, makes it possible to define CSS styles for classes of elements.
Equal styles for equal classes, or different styles for different classes.
Example

<!DOCTYPE html>
<html>
<head>
<style>
.cities {
    background-color:black;
    color:white;
    margin:20px;
    padding:20px;
} 
</style>
</head>

<body>

<div class="cities">
<h2>London</h2>
<p>
London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.
</p>
</div> 

</body>
</html>
-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
.parameter
{
    background-color:Orange;
    color:Black;
}
</style>
 <section>
    <h2><span style="color:red">Occupancy Status</span></h2>
    <asp:Label ID="lblOccupancy" runat="server" Text="Occupancy Status"></asp:Label>
    <asp:RadioButton ID="rbOn" Text="Occupied" runat="server">
    </asp:RadioButton><asp:RadioButton ID="rbOff" Text="Not Occupied" runat="server"></asp:RadioButton>
 </section>
  <section >
    <h2>Class Temperature</h2>
    <asp:Label ID="lblTemp" runat="server" Text="Class Temperature in Fahrenheit"></asp:Label>
    </asp:Label><asp:Label ID="lblTempValue" runat="server" Text="" ForeColor="White" BackColor="#CC0000" Font-Size="Larger"></asp:Label>
 </section>
  <section>
    <h2>Pressure</h2>
    <asp:Label ID="lblRh" runat="server" Text="Atmospheric Pressue in the class"></asp:Label>&nbsp&nbsp
    </asp:Label><asp:Label ID="lblRhValue" runat="server" Text="" ForeColor="White" BackColor="Blue" Font-Size="Larger"></asp:Label>
 </section>
  <section>
    <h2>Electric Voltage</h2>
    <asp:Label ID="lblVoltage" runat="server" Text="Electric Voltage in the class"></asp:Label>&nbsp&nbsp
    </asp:Label><asp:Label ID="lblVoltageValue" runat="server" Text="" ForeColor="White" BackColor="Green" Font-Size="Larger"></asp:Label>
  </section>
  <section>
    <h2>Lights, Fans & AC</h2>
    <asp:Label ID="lblLights" runat="server" Text="Status of Lights & Fans in the class"></asp:Label>&nbsp&nbsp
    &nbsp;
    <asp:Label ID="lblLightsOnOff" runat="server" BackColor="#000099" 
        BorderColor="#000099"></asp:Label>
&nbsp;&nbsp;
    
    <br />
    <asp:Label ID="lblAc" runat="server" Text="Status of ACs in the class"></asp:Label>&nbsp&nbsp
    <asp:RadioButton ID="rbAcOn" Text="On" runat="server"></asp:RadioButton>
    <asp:RadioButton Text="Off" ID="rbAcOff" runat="server"></asp:RadioButton>
  </section>
  <section class="parameter">
    <h2>Control Lights, Fans & AC</h2>
    <asp:Label ID="lblLightsManual" runat="server" Text="Switch On/Off Lights in the class"></asp:Label>&nbsp&nbsp
    <asp:Button ID="btnOnManualLights" runat="server" 
        onclick="btnOnManualLights_Click" Text="On" BackColor="Red" 
        Font-Bold="True" Font-Size="Large" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnOffManualLights" runat="server" BackColor="#0000CC" 
        Font-Bold="True" Font-Size="Large" ForeColor="White" 
        onclick="btnOffManualLights_Click" Text="Off" />
    <br />
    <asp:Label ID="lblFanssManual" runat="server" Text="Switch On/Off Fans in the class"></asp:Label>&nbsp&nbsp&nbsp&nbsp
    <asp:RadioButton ID="rbFansManualOn" Text="On" runat="server" 
        AutoPostBack="true" BackColor="Brown" 
        oncheckedchanged="rbFansManualOn_CheckedChanged"></asp:RadioButton>&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:RadioButton Text="Off" ID="rbFansManualOff" runat="server" AutoPostBack="true" BackColor="Brown"></asp:RadioButton>
  </section>
</asp:Content>

