<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageForAll.master" AutoEventWireup="true" CodeFile="MyHome.aspx.cs" Inherits="MyHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- 
HTML <object> Tag
he <object> tag defines an embedded object within an HTML document. 
Use this element to embed multimedia (like audio, video, Java applets, 
ActiveX, PDF, and Flash) in your web pages.

You can also use the <object> tag to embed another webpage into your HTML 
document.

You can use the <param> tag to pass parameters to plugins that have been 
embedded with the <object> tag.
Note: An <object> element must appear inside the <body> element. The 
text between the <object> and </object> is an alternate text, for 
browsers that do not support this tag.

Tip: For images use the <img> tag instead of the <object> tag.

Tip: At least one of the "data" or "type" attribute MUST be defined.
data: Specifies the URL of the resource to be used by the object
height: In pixels. Specifies the height of the object
width: In pixels. Specifies the height of the object
name: Specifies a name for the object
type: Is the media_type.	Specifies the media type of data specified 
in the data attribute
usemap: #mapname. Specifies the name of a client-side image map to be 
used with the object.
Default CSS Settings: Most browsers will display the <object> element with
 the following default values:
object:focus {
    outline: none;
}
-->
<nav>
<object id="matsclock" data="http://www.matsclock.com/matsclock.swf" style="width: 150px; height: 150px" type="application/x-shockwave-flash"> <param name="movie" value="http://www.matsclock.com/matsclock.swf" /> <param name="quality" value="High" /> <param name="wmode" value="transparent" /> </object> - See more at: http://www.matsclock.com/#sthash.U5OA3V7s.dpuf
  <ol>
    <li>LearnSmart Achieve is a revolutionary new learning system that combines a continually adaptive learning experience with important, rich, dynamic learning resources to help students learn the material, retain more knowledge and get better grades.</li>

    <li>As a student progresses through LearnSmart Achieve, the program’s continuously adaptive learning path adjusts to deliver just-in-time resources – instructional videos, simulations and more – catered to each student’s needs. This model is designed to accelerate learning and strengthen memory recall.</li>
    <li>Student Benefits</li>
    <li>Student Reports</li>

 </ol>

</nav>
</asp:Content>

