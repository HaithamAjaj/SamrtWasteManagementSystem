<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayAdmin.aspx.cs" Inherits="Content_DisplayAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>More Explain</title>
     <link rel="icon" href="Content/5.jpg" />
    <style>
        #Button1 {
  background-color: #FFAE58;
  color: black;
  border: 2px solid #555555;
  
}

#Button1:hover {
  background-color: #555555;
  color: white;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
      <asp:Button ID="Button1" runat="server" Text="Back" Height="47px" Width="60px" OnClick="Button1_Click" />
    <div>
        <br />
        <br />
        <br />
    <iframe width="30%" height="225" frameborder="0" src="https://stem.ubidots.com/app/dashboards/public/widget/H18PgKOmdvZ1KwTRMIMPYRttGsL1FGgcGbr-toKVeus?embed=true"></iframe>
    <br />
    <iframe width="30%" height="225" frameborder="0" src="https://stem.ubidots.com/app/dashboards/public/widget/fdxMlxWeVQO9yC8iyaCOV2QM_1MxUGcrKnVbKz8ALEU?embed=true"></iframe>
    <iframe width="60%" height="494" frameborder="0" style="margin-left:40%;margin-top:-55%" src="https://stem.ubidots.com/app/dashboards/public/widget/Cj43eNh7MBv4TMt5iJOr8bJ3apSCjv8ypkhhv4vn4Hc?embed=true"></iframe>

    </div>
    </form>
</body>
</html>
