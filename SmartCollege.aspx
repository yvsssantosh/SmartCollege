<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SmartCollege.aspx.vb" Inherits="SmartCollege" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Smart College</title>
    <script>
        document.createElement("grayBlock")
    </script>
    <style>
        grayBlock {
            background-color:#d5faf3;
            display:block;
            padding:20px;
            font-size:30px;
            text-align:center;
            text-decoration-style:double;
            text-underline-position:below;
            font-size:bold;
        }
        body {font-family: Verdana, sans-serif; font-size:0.8em;}
        header, nav, section, article, footer
        {border:1px solid grey; margin:5px; padding:8px;}
        nav ul {margin:0; padding:0;}
        nav ul li {display:inline; margin:5px;}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <header>
        <grayBlock>Smart College</grayBlock>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Class1</a></li>
                <li><a href="#">AC In All Classes</a></li>
            </ul>
        </nav>
    </header>
    </div>
    </form>
</body>
</html>
